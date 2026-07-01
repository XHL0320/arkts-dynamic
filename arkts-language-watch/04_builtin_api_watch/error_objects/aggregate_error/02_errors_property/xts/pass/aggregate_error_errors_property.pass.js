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

function testAggregateErrorErrorsProperty() {
  const first = new Error("first");
  const err = new AggregateError([first, 2], "combined");
  assertCondition(err.errors.length === 2, "AggregateError.errors length should match input");
  assertCondition(err.errors[0] === first, "AggregateError.errors should preserve order");
  assertCondition(err.errors[1] === 2, "AggregateError.errors should allow arbitrary values");
}

testAggregateErrorErrorsProperty();
