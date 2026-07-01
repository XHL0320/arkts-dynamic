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

function testStringRepeatNegative() {
  assertThrowsError(RangeError, function () {
    "a".repeat(-1);
  }, "repeat(-1) should throw RangeError");
}

testStringRepeatNegative();
