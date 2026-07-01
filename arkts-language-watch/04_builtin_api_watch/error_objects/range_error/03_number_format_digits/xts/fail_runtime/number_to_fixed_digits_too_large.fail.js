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

function testToFixedDigitsTooLarge() {
  assertThrowsError(RangeError, function () {
    (1).toFixed(101);
  }, "toFixed(101) should throw RangeError");
}

testToFixedDigitsTooLarge();
