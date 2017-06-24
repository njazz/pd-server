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
#include "set_contains.h"
#include "ceammc_factory.h"

SetContains::SetContains(const PdArgs& a)
    : BaseObject(a)
    , patterns_(positionalArguments())
{
    createInlet();
    createOutlet();
}

void SetContains::onDataT(const DataTypeSet& s)
{
    const size_t n = patterns_.size();
    if (n < 1)
        return;

    if (n == 1) {
        floatTo(0, s.contains(patterns_[0].toAtom()));
    } else {
        floatTo(0, s.contains(patterns_.toList()));
    }
}

void SetContains::onInlet(size_t n, const AtomList& lst)
{
    patterns_.set(lst);
}

extern "C" void setup_set0x2econtains()
{
    ObjectFactory<SetContains> obj("set.contains");
    obj.processData<DataTypeSet>();
}
