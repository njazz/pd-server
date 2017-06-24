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
#include "../array/array_s2p.h"
#include "base_extension_test.h"
#include "ceammc_pd.h"

#include "catch.hpp"

typedef TestExtension<ArraySampleToPhase> ArraySampleToPhaseTest;

using namespace ceammc;

#define ON_FLOAT_REQUIRE(in, t, out)        \
    {                                       \
        WHEN_SEND_FLOAT_TO(0, t, in);       \
        REQUIRE_FLOAT_AT_OUTLET(0, t, out); \
    }

#define ON_FLOAT_REQUIRE_NO_MSG(in, t)       \
    {                                        \
        WHEN_SEND_FLOAT_TO(0, t, in);        \
        REQUIRE_NO_MESSAGES_AT_OUTLET(0, t); \
    }

#define ON_LIST_REQUIRE(in, t, out)        \
    {                                      \
        WHEN_SEND_LIST_TO(0, t, in);       \
        REQUIRE_LIST_AT_OUTLET(0, t, out); \
    }

#define ON_LIST_REQUIRE_NO_MSG(in, t)        \
    {                                        \
        WHEN_SEND_LIST_TO(0, t, in);         \
        REQUIRE_NO_MESSAGES_AT_OUTLET(0, t); \
    }

static CanvasPtr cnv = PureData::instance().createTopCanvas("test_canvas");

TEST_CASE("array.s2p", "[externals]")
{

    SECTION("test create with:")
    {
        SECTION("empty arguments")
        {
            cnv->createArray("array1", 10);

            ArraySampleToPhaseTest t("array.s2p");
            REQUIRE(t.numInlets() == 1);
            REQUIRE(t.numOutlets() == 1);

            ON_FLOAT_REQUIRE_NO_MSG(0, t);
            ON_FLOAT_REQUIRE_NO_MSG(5, t);
            ON_FLOAT_REQUIRE_NO_MSG(10, t);

            ON_LIST_REQUIRE_NO_MSG(L3(1, 2, 3), t);
        }

        SECTION("symbol arguments")
        {
            ArraySampleToPhaseTest t("array.s2p", A("array1"));
            ON_FLOAT_REQUIRE(0, t, 0);
            ON_FLOAT_REQUIRE(5, t, 0.5);
            ON_FLOAT_REQUIRE(10, t, 1);

            ON_FLOAT_REQUIRE(-1, t, -0.1);
            ON_FLOAT_REQUIRE(-10, t, -1);
            ON_FLOAT_REQUIRE(11, t, 1.1);
            ON_FLOAT_REQUIRE(20, t, 2);

            ON_LIST_REQUIRE(L3(1, 2, 3), t, L3(0.1f, 0.2f, 0.3f));
            ON_LIST_REQUIRE(L2(-10, 40), t, L2(-1, 4));
        }
    }
}
