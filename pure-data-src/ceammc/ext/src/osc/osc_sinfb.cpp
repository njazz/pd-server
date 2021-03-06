#include "osc_sinfb.h"

EXTERNAL_NEW
{
    FAUST_EXT* x = reinterpret_cast<FAUST_EXT*>(pd_new(FAUST_EXT_CLASS));

    PdArgParser p(x, argc, argv);
    p.signalFloatArg("freq", 1);
    p.initFloatArg("feedback", 2);
    return p.pd_obj();
}

EXTERNAL_SETUP(osc);
