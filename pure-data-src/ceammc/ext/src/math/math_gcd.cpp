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
#include "math_gcd.h"
#include "ceammc_factory.h"

#include <boost/math/common_factor.hpp>

MathGCD::MathGCD(const PdArgs& a)
    : BaseObject(a)
    , b_(positionalFloatArgument(0, 0))
{
    createInlet(&b_);
    createOutlet();
}

void MathGCD::onFloat(float f)
{
    floatTo(0, boost::math::gcd(int(f), int(b_)));
}

void MathGCD::onList(const AtomList& l)
{
    if(l.size() < 1)
        return;

    if(l.size() == 1)
        return onFloat(l[0].asFloat());

    b_ = l[1].asFloat();
    onFloat(l[0].asFloat());
}

extern "C" void setup_math0x2egcd()
{
    ObjectFactory<MathGCD> obj("math.gcd");
}
