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

function testReferenceErrorObjectBehavior() {
  const err = new ReferenceError("sample");
  assertCondition(err instanceof ReferenceError, "expected ReferenceError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "ReferenceError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testReferenceErrorObjectBehavior();
