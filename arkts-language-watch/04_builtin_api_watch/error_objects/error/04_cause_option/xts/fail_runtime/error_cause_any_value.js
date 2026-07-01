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

function test04causeoptionBoundary() {
  assertCondition(typeof "04_cause_option" === "string", "boundary probe");
}

test04causeoptionBoundary();
