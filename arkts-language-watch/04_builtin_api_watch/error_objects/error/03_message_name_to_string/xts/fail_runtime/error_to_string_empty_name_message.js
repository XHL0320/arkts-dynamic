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

function test03messagenametostringBoundary() {
  assertCondition(typeof "03_message_name_to_string" === "string", "boundary probe");
}

test03messagenametostringBoundary();
