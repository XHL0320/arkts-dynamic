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

function testSyntaxErrorObjectBehavior() {
  const err = new SyntaxError("sample");
  assertCondition(err instanceof SyntaxError, "expected SyntaxError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "SyntaxError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testSyntaxErrorObjectBehavior();
