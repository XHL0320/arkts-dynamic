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

function test06errorsubclassingBoundary() {
  assertCondition(typeof "06_error_subclassing" === "string", "boundary probe");
}

test06errorsubclassingBoundary();
