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
#ifndef STRING_SUBSTR_H
#define STRING_SUBSTR_H

#include "ceammc_object.h"
#include "datatype_string.h"

using namespace ceammc;

class StringSubstr : public BaseObject {
    IntProperty* from_;
    SizeTProperty* len_;

public:
    StringSubstr(const PdArgs& a);
    void onDataT(const DataTypeString& s);
    void onSymbol(t_symbol* s);
};

extern "C" void setup_string0x2esubstr();

#endif // STRING_SUBSTR_H
