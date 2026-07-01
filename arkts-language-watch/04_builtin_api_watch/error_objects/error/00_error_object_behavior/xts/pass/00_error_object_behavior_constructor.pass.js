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

function testErrorObjectBehavior() {
  const err = new Error("sample");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "Error", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testErrorObjectBehavior();
