#ifndef PDSERVERPROTOTYPE_H
#define PDSERVERPROTOTYPE_H

#include <map>
#include <string>
#include <vector>

namespace ceammc {
class AtomList;
}

using namespace std;
using namespace ceammc;

//typedef void (*t_updateUI)(void* uiobj, AtomList msg);

typedef vector<string> ServerPath;

class Observer {
private:
    AtomList* _data;

public:
    Observer();
    virtual void update();
    void setData(AtomList data);
    AtomList data();
};

class PropertyObserver {
public:
    virtual void update();
};

class ConsoleObserver : public Observer {
private:
    string _text;

public:
    void setText(string text) { _text = text; };
    string text() { return _text; };
};

typedef enum { XLetMessage,
    XLetSignal } XLetType;

class ServerXLet {
public:
    XLetType type;
    int index;
};

class ServerOutlet : ServerXLet {
public:
};

class ServerInlet : ServerXLet {
public:
};

// -------------------------------

class ServerProperties {
    vector<PropertyObserver*> _observers;

public:
    void addObserver(PropertyObserver* p);
    void removeObserver(PropertyObserver* p);
};

enum ServerObjectType { typeObject,
    typeCanvas,
    typeArray,
    typeAbstraction };

//class t_pd;

class ServerCanvas;
typedef struct _text t_object;

class ServerObject {
private:
    ServerCanvas* _parent;
    ServerObjectType _type;
    ServerProperties* _properties;

    bool _errorBox;

public:
    // temporary
    t_object* _pdObject;

    bool errorBox() { return _errorBox; }

    ServerObject();

    explicit ServerObject(ServerCanvas* parent, string text);

    virtual ServerCanvas* parent();

    //void message(const AtomList& list);
    void message(string str);

    virtual int inletCount();
    virtual int outletCount();

    virtual void registerObserver(Observer* o);
    virtual void deleteObserver();

    ServerObjectType type();
    void setType(ServerObjectType type);

    ServerProperties* properties();

    ServerCanvas* toServerCanvas();

    //TEMPORARY
    //void connectUI(void* uiObject, t_updateUI uiFunction);
};

typedef struct _serverArrayData
{
    int size;
    float* sample;
} ServerArrayData;

class ServerArray : ServerObject {
    int _size;
    string _name;

    ServerCanvas* _parent;

    void* _pdArray;

public:
    explicit ServerArray(ServerCanvas* parent, string name, int size);

    int size();
    void setSize(int size);

    ServerArrayData* getData();//float* dest, size_t n);
    virtual void registerObserver(Observer* o);
};

class ServerPatchcord {
public:
};

// ----------------------------------------

class ServerInstance;
//typedef struct _glist t_canvas;

class ServerCanvas : public ServerObject {
private:
    struct _glist* _canvas;

    vector<ServerObject*> _objects;
    vector<ServerPatchcord*> _patchcords;
    ServerPath _path;

    ServerInstance* _parentInstance;

public:
    ServerCanvas();
    ServerCanvas(struct _glist* canvas);

    void setParentInstance(ServerInstance* p) { _parentInstance = p; }
    ServerInstance* parentInstance() { return _parentInstance; }

    ServerObject* createObject(string name); // Object* || Canvas*
    void deleteObject(ServerObject* o);

    struct _glist* canvasObject();

    ServerCanvas* createEmptySubCanvas();

    ServerArray* createArray(string arrayName, int size);
    void deleteArray(ServerArray* a);

    ServerPatchcord* createPatchcord(ServerObject* src, int srcIdx, ServerObject* dest, int destIdx); //?
    void disconnect(ServerPatchcord* p); //??

    vector<ServerObject*> getObjectList();
    vector<ServerPatchcord*> getConnectionList();
    virtual void registerObserver(Observer* o);
    virtual void deleteObserver();
    ServerPath path();

    void loadbang();
};

class ServerAudioDevice {
public:
};
class ServerMIDIDevice {
public:
};

// ----------------------------------------

class ServerInstance // : Object ??
{
private:
    vector<ServerCanvas*> _canvases;
    vector<Observer*> _observers;
    ServerPath* _path;
    ServerAudioDevice* _audioDevice;
    ServerMIDIDevice* _midiDevice;
    ConsoleObserver* _consoleObserver;

public:
    ServerInstance();

    ServerCanvas* createCanvas();
    void deleteCanvas();

    void dspOn();
    void dspOff();
    void dspSwitch(bool value);

    void registerObserver(Observer* o);
    void deleteObserver(Observer* o);

    void setConsoleObserver(ConsoleObserver* o);

    ServerPath* path();

    vector<string*> listRegisteredObjects();

    void addSearchPath(string searchPath);

    bool loadLibrary(string libraryName);
    void loadExternal(string externalName);

    static void post(string text);
    static void error(string text);
    static void verbose(int level, string text);

    static void setVerboseLevel(int level);

    ServerAudioDevice* audioDevice();
    ServerMIDIDevice* midiDevice();
};

// ----------------------------------------

class TheServer {
private:
    vector<ServerInstance*> _instances;

public:
    TheServer();

    vector<ServerInstance*> instances();
    ServerInstance* firstInstance();

    ServerInstance* createInstance();
};

class LocalServer : public TheServer {
};

// --------------------------------------

#endif // PDSERVERPROTOTYPE_H
