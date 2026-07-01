function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError(ctor, action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testAggregateErrorErrorsNonIterable() {
  assertThrowsError(TypeError, function () {
    new AggregateError(1, "bad errors");
  }, "AggregateError non-iterable errors should throw TypeError");
}

testAggregateErrorErrorsNonIterable();
