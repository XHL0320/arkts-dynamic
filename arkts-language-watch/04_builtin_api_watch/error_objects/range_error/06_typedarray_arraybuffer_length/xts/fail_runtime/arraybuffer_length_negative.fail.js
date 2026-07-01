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

function testArrayBufferLengthNegative() {
  assertThrowsError(RangeError, function () {
    new ArrayBuffer(-1);
  }, "negative ArrayBuffer length should throw RangeError");
}

testArrayBufferLengthNegative();
