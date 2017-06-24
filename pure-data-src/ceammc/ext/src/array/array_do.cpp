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
#include "array_do.h"
#include "ceammc_factory.h"

ArrayDo::ArrayDo(const PdArgs& a)
    : ArrayMod(a)
    , idx_(0)
{
    createInlet();
    createOutlet();
    createOutlet();
}

void ArrayDo::onBang()
{
    if (!check())
        return;

    output();
    finish();
}

void ArrayDo::onSymbol(t_symbol* s)
{
    if (!setArray(s))
        return;

    output();
    finish();
}

void ArrayDo::onInlet(size_t n, const AtomList& l)
{
    if (n != 1 || l.empty())
        return;

    array_[idx_] = l[0].asFloat();
}

void ArrayDo::output()
{
    AtomList lst;
    lst.fill(0.f, 3);
    lst[2] = array_.size();

    for (idx_ = 0; idx_ < array_.size(); idx_++) {
        lst[0] = array_.at(idx_);
        lst[1] = idx_;
        listTo(1, lst);
    }
}

void ArrayDo::finish()
{
    if (shouldRedraw())
        array_.redraw();

    bangTo(0);
}

extern "C" void setup_array0x2edo()
{
    ObjectFactory<ArrayDo> obj("array.do");
}
