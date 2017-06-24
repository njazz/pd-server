/*****************************************************************************
 * Copyright 2017 Serge Poltavsky. All rights reserved.
 *
 * This file may be distributed under the terms of GNU Public License version
 * 3 (GPL v3) as defined by the Free Software Foundation (FSF). A copy of the
 * license should have been included with this file, or the project in which
 * this file belongs to. You may also find the details of GPL v3 at:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 *
 * If you have any questions regarding the use of this file, feel free to
 * contact the author of this file, or the owner of the project in which
 * this file belongs to.
 *****************************************************************************/
#include "flow_split.h"
#include "ceammc_factory.h"

FlowSplit::FlowSplit(const PdArgs& a)
    : BaseObject(a)
    , split_(0)
{
    createInlet();
    createOutlet();
    createOutlet();
    createOutlet();
}

void FlowSplit::onBang()
{
    split_ = 1;
    bangTo(2);
    bangTo(split_);
}

void FlowSplit::onFloat(float v)
{
    split_ = 1;
    floatTo(2, v);
    floatTo(split_, v);
}

void FlowSplit::onSymbol(t_symbol* s)
{
    split_ = 1;
    symbolTo(2, s);
    symbolTo(split_, s);
}

void FlowSplit::onList(const AtomList& l)
{
    split_ = 1;
    listTo(2, l);
    listTo(split_, l);
}

void FlowSplit::onAny(t_symbol* s, const AtomList& l)
{
    split_ = 1;
    anyTo(2, s, l);
    anyTo(split_, s, l);
}

void FlowSplit::onInlet(size_t n, const AtomList& l)
{
    if (n != 1 || l.empty())
        return;

    split_ = (l.asSizeT(0) == 1) ? 0 : 1;
}

extern "C" void setup_flow0x2esplit()
{
    ObjectFactory<FlowSplit> obj("flow.split");
    obj.addAlias("split");
}
