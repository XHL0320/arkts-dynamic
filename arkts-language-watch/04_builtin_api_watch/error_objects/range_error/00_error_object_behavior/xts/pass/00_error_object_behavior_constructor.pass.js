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

function testRangeErrorObjectBehavior() {
  const err = new RangeError("sample");
  assertCondition(err instanceof RangeError, "expected RangeError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "RangeError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testRangeErrorObjectBehavior();
