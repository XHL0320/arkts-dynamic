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

function testAggregateErrorObjectBehavior() {
  const err = new AggregateError([], "sample");
  assertCondition(err instanceof AggregateError, "expected AggregateError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "AggregateError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testAggregateErrorObjectBehavior();
