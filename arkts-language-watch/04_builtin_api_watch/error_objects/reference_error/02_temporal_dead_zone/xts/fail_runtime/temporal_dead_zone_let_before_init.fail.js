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

function testLetBeforeInitialization() {
  assertThrowsError(ReferenceError, function () {
    eval("value; let value = 1;");
  }, "reading let binding before initialization should throw ReferenceError");
}

testLetBeforeInitialization();
