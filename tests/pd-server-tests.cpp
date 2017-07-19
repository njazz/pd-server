#define CATCH_CONFIG_MAIN
#include "catch.hpp"

#include "../src/pdServer.hpp"

ServerInstance* testServerInstance;

bool init()
{
    return testServerInstance = new ServerInstance();
}

bool canvas_New()
{
    return testServerInstance->createCanvas();
    ;
}

bool canvas_NewCopy()
{
    ServerCanvas* c = testServerInstance->createCanvas();
    return new ServerCanvas(c->canvasObject());
}

bool array_New()
{
    ServerCanvas* c = testServerInstance->createCanvas();

    return c->createArray("test-array", 1024);
    ;
}

bool object_New()
{
    ServerCanvas* c = testServerInstance->createCanvas();

    return !c->createObject("print test-object")->errorBox();
}

bool object_NewErrorbox()
{
    ServerCanvas* c = testServerInstance->createCanvas();

    return c->createObject("not-existing-test-object")->errorBox();
}

// ------

TEST_CASE("Objects are created", "[objects]")
{
    REQUIRE(init());

    REQUIRE(canvas_New());
    REQUIRE(canvas_NewCopy());
    REQUIRE(array_New());
    REQUIRE(object_New());
    REQUIRE(object_NewErrorbox());
}
