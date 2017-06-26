#include "pdServer.hpp"

#include "pdLib.hpp"

#include <cassert>

// TEMPORARY
extern "C" {
#include "m_imp.h"
}

//TEMPORARY
#include "math.h"

using namespace std;

static map<long, Observer*> objectObservers;
// ------------------------------

void Observer::update(){};

void PropertyObserver::update(){};

// -------------------------------

void ServerProperties::addObserver(PropertyObserver* p){};
void ServerProperties::removeObserver(PropertyObserver* p){};

// ---------------------------------------

ServerObject::ServerObject()
{
    _parent = 0;
    _pdObject = 0;
    _type = typeObject;
    _properties = 0;
    _errorBox = false;
}

ServerObject::ServerObject(ServerCanvas* parent, string text)
{

    _parent = parent;
    _pdObject = 0;
    _type = typeObject;
    _properties = 0;

    if (parent->type() == typeCanvas) {

        //        ServerCanvas* p = dynamic_cast<ServerCanvas*>(parent);
        //        assert(p);

        t_canvas* canvas = (parent->canvasObject());

        t_object* obj = cmp_create_object(canvas, text, 0, 0);

        //t_class* cl = (t_class*)obj;

        _pdObject = (void*)obj;

        std::cout << "|||||||||| new object on canvas: " << canvas << " || pd object ptr " << _pdObject << std::endl;

        if (obj) {
            std::cout << "class name after object is created: " << obj->te_g.g_pd->c_name->s_name << "\n";

            t_class* cl = (t_class*)(obj);

            //t_class
            std::cout << "class name after object is created (pointer): " << cl->c_name->s_name << "\n";
        }
    } else {
        cmp_post("ServerCanvas error!");
    }

    _errorBox = (!_pdObject);

    //setType(typeObject);

    if (_pdObject)
        if (cmp_is_abstraction((t_object*)_pdObject))
            setType(typeAbstraction);
}

//void ServerObject::setParent(ServerObject* parent) { _parent = parent; };
ServerCanvas* ServerObject::parent() { return _parent; };

// TEMPORARY
#include "m_imp.h"
void ServerObject::message(string str)
{
    string* msg = new string;
    *msg = str;

    cout << "msg " << msg << endl;

    t_class* cl = (t_class*)_pdObject;

    std::cout << "class name from serverObject: " << cl->c_name->s_name << "\n";

    if (_pdObject) {
        cout << "send-> " << this << " pd object:" << _pdObject << endl;
        cmp_sendstring(static_cast<t_object*>(_pdObject), *msg);
    } else {
        cmp_post("internal pdObject error");
        cout << "pdobject error" << endl;
    }
};

int ServerObject::inletCount()
{
    if (_pdObject)
        return cmp_get_inlet_count(reinterpret_cast<t_object*>(_pdObject));
    else
        return -1;
};
int ServerObject::outletCount()
{
    if (_pdObject)
        return cmp_get_outlet_count(reinterpret_cast<t_object*>(_pdObject));
    else
        return -1;
};

void ServerObject::registerObserver(Observer* o)
{
    objectObservers[(long)_pdObject] = o;
    std::cout << " ^^^ registered observer: " << (long)o << " for " << (long)_pdObject << "\n";
};

void ServerObject::deleteObserver()
{
    objectObservers.erase((long)_pdObject);
};

ServerObjectType ServerObject::type() { return _type; };
void ServerObject::setType(ServerObjectType type) { _type = type; }

ServerProperties* ServerObject::properties() { return _properties; };

//void ServerObject::connectUI(void* uiObject, t_updateUI uiFunction)
//{
//    cmp_connectUI((t_pd*)_pdObject, uiObject, uiFunction);
//};

// ----------------------------------------
ServerArray::ServerArray(ServerCanvas* parent, string name, int size)
{
    _name = name;
    _size = size;

    _parent = parent;

    if (!_parent->canvasObject()) {
        ServerInstance::post("ServerArray: bad Pd canvas pointer!");
        //return false;
    }

    //std::cout << "Array: Pd canvas: " << parent->canvasObject() << "\n";

    _pdArray = cmp_new_array(_parent->canvasObject(), gensym(_name.c_str()), float(_size), 1, 1);

    if (!_pdArray) {
        ServerInstance::post("Pd array not created!");

    }
}
int ServerArray::size()
{
    return _size;
}
void ServerArray::setSize(int size)
{
    _size = size;
}

ServerArrayData* ServerArray::getData()//float* dest, size_t n)
{
    ServerArrayData* ret = new ServerArrayData;

    //int _arrSize = _size;
    if (!_pdArray) {
        ServerInstance::post("bad array pointer!");
        return 0;
    }

    ret->size = _size;

    ret->sample = new float[_size];

    //TEST
//    for (int i=0;i<_size;i++)
//    {
//        ret->sample[i] = sinf(float(i)/_size*6.28);
//    }

    if (cmp_get_array_size((t_garray*)_pdArray) != _size)
    {
        ServerInstance::post("Array size error");
    }

    ret->sample = cmp_get_array_data((t_garray*)_pdArray);//, &_size, (t_word**)&ret->sample);

    return ret;
};

void ServerArray::registerObserver(Observer* o){};

// ----------------------------------------
ServerCanvas::ServerCanvas()
{
    _canvas = cmp_new_patch();
    //std::cout << "|||||||||| server canvas: " << this << " || pd canvas ptr " << _canvas << std::endl;
    setType(typeCanvas);

    if (!_canvas)
        ServerInstance::post("bad Pd canvas pointer!");

    //std::cout << "New pd canvas: " << _canvas << "\n";
}

ServerObject* ServerCanvas::createObject(string name)
{
    ServerObject* ret = new ServerObject(this, name);
    _objects.push_back(ret);
    return ret;
};

void ServerCanvas::deleteObject(ServerObject* o){
    // TODO
};

t_canvas* ServerCanvas::canvasObject()
{
    return _canvas;
}

ServerCanvas* ServerCanvas::createEmptySubCanvas(){};

ServerArray* ServerCanvas::createArray(string arrayName, int size)
{
    ServerArray* ret = new ServerArray(this, arrayName, size);

    return ret;
};
void ServerCanvas::deleteArray(ServerArray* a){};

ServerPatchcord* ServerCanvas::patchcord(ServerObject* src, int srcIdx, ServerObject* dest, int destIdx)
{
    cmp_patchcord((t_object*)src->_pdObject, srcIdx, (t_object*)dest->_pdObject, destIdx);
};

void ServerCanvas::disconnect(ServerPatchcord* p){}; //??

vector<ServerObject*> ServerCanvas::getObjectList()
{
    return _objects;
};
vector<ServerPatchcord*> ServerCanvas::getConnectionList()
{
    return _patchcords;
};

void ServerCanvas::registerObserver(Observer* o){};
void ServerCanvas::deleteObserver(){};

ServerPath ServerCanvas::path()
{
    return _path;
};

void ServerCanvas::loadbang()
{
    if (_pdObject)
        cmp_loadbang((t_canvas*)_pdObject);
}

// -----------------------------------------------

class printHook {
private:
    static vector<ConsoleObserver*> _consoleObservers;

public:
    static void addObserver(ConsoleObserver* c) { _consoleObservers.push_back(c); };
    static void deleteObserver(ConsoleObserver* c){ /*todo*/ };

    static void hookFunction(const char* str)
    {

        vector<ConsoleObserver*>::iterator it;
        for (it = _consoleObservers.begin(); it != _consoleObservers.end(); ++it) {
            ConsoleObserver* c = *it;
            if (c) {
                //cout << "print hook: " << str << endl;
                c->setText(str);
                c->update();
            }
        }
    }
};

vector<ConsoleObserver*> printHook::_consoleObservers;

// ----------------------------------------------

ServerInstance::ServerInstance()
{
    cout << "######### new server instance" << endl;

    cmp_pdinit();
    cmp_setprinthook(&printHook::hookFunction);

    _consoleObserver = 0;
    _midiDevice = 0;
    _audioDevice = 0;
    _path = 0;
}

ServerCanvas* ServerInstance::createCanvas()
{
    ServerCanvas* ret = new ServerCanvas();
    ret->setParentInstance(this);
    _canvases.push_back(ret);
    return ret;
};

void ServerInstance::deleteCanvas(){
    // TODO
};

void ServerInstance::dspOn() { cmp_switch_dsp(true); };
void ServerInstance::dspOff() { cmp_switch_dsp(false); };
void ServerInstance::dspSwitch(bool value) { cmp_switch_dsp(value); };

void ServerInstance::registerObserver(Observer* o){};
void ServerInstance::deleteObserver(Observer* o){};

void ServerInstance::setConsoleObserver(ConsoleObserver* o)
{
    _consoleObserver = o;

    printHook::addObserver(o);
};

ServerPath* ServerInstance::path() { return _path; };

vector<string*> ServerInstance::listRegisteredObjects(){};

void ServerInstance::addSearchPath(string searchPath)
{
    cmp_add_searchpath(gensym(searchPath.c_str()));
}

bool ServerInstance::loadLibrary(string libraryName)
{
    bool ret = cmp_loadlib(libraryName);

    cmp_post("loading library '" + libraryName + "' ...");

    if (!ret)
        cmp_post("Library not loaded: " + libraryName);

    return ret;
};
void ServerInstance::loadExternal(string externalName){};

void ServerInstance::post(string text) { cmp_post(text); };
void ServerInstance::error(string text) { cmp_post(text); };
void ServerInstance::verbose(int level, string text) { cmp_post(text); };

void ServerInstance::setVerboseLevel(int level)
{
    cmp_set_verbose(level);
};

ServerAudioDevice* ServerInstance::audioDevice() { return _audioDevice; };
ServerMIDIDevice* ServerInstance::midiDevice() { return _midiDevice; };

// ----------------------------------------

TheServer::TheServer()
{
    createInstance();
}

ServerInstance* TheServer::firstInstance()
{
    if (_instances.size() > 0)
        return _instances[0];
    else
        return 0;
}

vector<ServerInstance*> TheServer::instances() { return _instances; };

ServerInstance* TheServer::createInstance()
{
    ServerInstance* ret = new ServerInstance();
    _instances.push_back(ret);
    return ret;
}

// ---------------------------------------

Observer::Observer()
{
    _data = new AtomList;
}

void Observer::setData(AtomList data) { *_data = data; };
AtomList Observer::data()
{
    AtomList ret = *_data;
    return ret;
};

// ---------------------------------------

void qtpdUpdate(long objectId, AtomList list)
{
    //cmp_post("qtpd update>>");

    //map<long, Observer*>::iterator it;

    //for (it=objectObservers.begin(); it!=objectObservers.end(); ++it)
    //{

    if (objectObservers[objectId]) {
        Observer* o = objectObservers[objectId];
        if (o) {
            o->setData(list);
            o->update();
        } else {
            cmp_post("observer not found");
        }
        //cmp_post("updated obj");
    } else {
        std::cout << "object not found: " << objectId << "\n";
        std::cout << "observers count: " << objectObservers.size() << "\n";
    }

    //}
}
