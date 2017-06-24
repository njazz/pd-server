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
#include "array_minmax.h"
#include "ceammc_factory.h"

#include <boost/algorithm/minmax_element.hpp>

ArrayMinMax::ArrayMinMax(const PdArgs& a)
    : ArrayBase(a)
{
    createOutlet();
    createOutlet();
}

void ArrayMinMax::onBang()
{
    if (!check())
        return;

    perform();
}

void ArrayMinMax::onSymbol(t_symbol* s)
{
    if (!setArray(s))
        return;

    perform();
}

void ArrayMinMax::perform()
{
    std::pair<ArrayIterator, ArrayIterator> minmax = boost::minmax_element(array_.begin(), array_.end());

    if (minmax.first == array_.end())
        return;

    listTo(1, AtomList(minmax.first - array_.begin(), minmax.second - array_.begin()));
    listTo(0, AtomList(*minmax.first, *minmax.second));
}

extern "C" void setup_array0x2eminmax()
{
    ObjectFactory<ArrayMinMax> obj("array.minmax");
}
