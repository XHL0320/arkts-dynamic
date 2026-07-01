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

function testThrowCatchAggregateError() {
  assertThrowsError(AggregateError, function () {
    throw new AggregateError([], "sample");
  }, "throw new AggregateError should be caught");
}

testThrowCatchAggregateError();
