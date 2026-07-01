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

function testURIErrorObjectBehavior() {
  const err = new URIError("sample");
  assertCondition(err instanceof URIError, "expected URIError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "URIError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testURIErrorObjectBehavior();
