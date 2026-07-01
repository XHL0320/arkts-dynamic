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

function testTypeofTemporalDeadZone() {
  assertThrowsError(ReferenceError, function () {
    eval("typeof value; let value = 1;");
  }, "typeof TDZ binding should throw ReferenceError");
}

testTypeofTemporalDeadZone();
