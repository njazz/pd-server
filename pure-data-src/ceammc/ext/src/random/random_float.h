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
#ifndef RANDOM_FLOAT_H
#define RANDOM_FLOAT_H

#include "ceammc_object.h"

using namespace ceammc;

class RandomFloat : public BaseObject {
    FloatProperty* min_;
    FloatProperty* max_;

public:
    RandomFloat(const PdArgs& a);

    void onBang();
};

extern "C" void setup_random0x2efloat();

#endif // RANDOM_FLOAT_H
