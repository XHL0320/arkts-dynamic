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

function testSuppressedErrorObjectBehaviorBoundary() {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  const err = new SuppressedError(new Error("primary"), new Error("suppressed"), "combined");
  assertCondition(err instanceof Error, "SuppressedError should extend Error when supported");
  assertCondition(err.name === "SuppressedError", "unexpected SuppressedError name");
  assertCondition(err.error instanceof Error, "unexpected error property");
  assertCondition(err.suppressed instanceof Error, "unexpected suppressed property");
}

testSuppressedErrorObjectBehaviorBoundary();
