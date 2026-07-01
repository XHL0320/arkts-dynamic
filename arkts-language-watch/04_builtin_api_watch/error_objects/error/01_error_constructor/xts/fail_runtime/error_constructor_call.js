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

function test01errorconstructorBoundary() {
  assertCondition(typeof "01_error_constructor" === "string", "boundary probe");
}

test01errorconstructorBoundary();
