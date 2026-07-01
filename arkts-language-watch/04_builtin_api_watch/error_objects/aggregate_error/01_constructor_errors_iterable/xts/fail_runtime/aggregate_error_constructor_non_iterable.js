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

function testAggregateErrorNonIterableErrors() {
  assertThrowsError(TypeError, () => {
    new AggregateError(1, "bad");
  }, "AggregateError non-iterable errors should throw TypeError");
}

testAggregateErrorNonIterableErrors();
