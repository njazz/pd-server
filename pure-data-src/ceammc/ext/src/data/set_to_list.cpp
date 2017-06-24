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
#include "set_to_list.h"
#include "ceammc_factory.h"

SetToList::SetToList(const PdArgs& a)
    : BaseObject(a)
    , sort_(0)
{
    createOutlet();

    sort_ = new FlagProperty("@sort");
    createProperty(sort_);
}

void SetToList::onDataT(const DataTypeSet& s)
{
    AtomList lst = s.toList();

    if (sort_->value())
        lst.sort();

    listTo(0, lst);
}

extern "C" void setup_set0x2elist()
{
    ObjectFactory<SetToList> obj("data.set2list");
    obj.processData<DataTypeSet>();
    obj.addAlias("set->list");
}
