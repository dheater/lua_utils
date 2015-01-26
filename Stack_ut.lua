local lt = require "lunatest"
require "Stack"

function setup()
    stack=Stack:Create()
end

function test_initial_state()
    lt.assert_not_nil(stack)
    lt.assert_equal(0, stack:getn())
end

function test_stack()
    stack:push("a")
    lt.assert_equal(1, stack:getn())
    stack:list()
    lt.assert_equal(stack:pop(), "a")
    lt.assert_equal(0, stack:getn())
    lt.assert_nil(stack:pop())
    lt.assert_equal(0, stack:getn())

    stack:push("a", "b")
    lt.assert_equal(2, stack:getn())
    stack:list()
    lt.assert_equal(stack:pop(), "b")
    lt.assert_equal(1, stack:getn())
    lt.assert_equal(stack:pop(), "a")
    lt.assert_equal(0, stack:getn())
    lt.assert_nil(stack:pop())
    lt.assert_equal(0, stack:getn())
end

function test_pop_empty()
    lt.assert_nil(stack:pop())
end


lt.run()
