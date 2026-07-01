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

function test02errorprototypeBoundary() {
  assertCondition(typeof "02_error_prototype" === "string", "boundary probe");
}

test02errorprototypeBoundary();
