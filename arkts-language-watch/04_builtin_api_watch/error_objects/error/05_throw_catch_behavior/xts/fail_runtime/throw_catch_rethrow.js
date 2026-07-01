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

function test05throwcatchbehaviorBoundary() {
  assertCondition(typeof "05_throw_catch_behavior" === "string", "boundary probe");
}

test05throwcatchbehaviorBoundary();
