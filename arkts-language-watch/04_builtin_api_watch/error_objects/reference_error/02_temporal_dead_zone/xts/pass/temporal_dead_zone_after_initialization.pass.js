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

function testAfterInitialization() {
  let value = 1;
  assertCondition(value === 1, "initialized lexical binding should be readable");
}

testAfterInitialization();
