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

function testStringRepeatZero() {
  assertCondition("a".repeat(0) === "", "repeat(0) should return empty string");
}

testStringRepeatZero();
