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

function testNegativeArrayLength() {
  assertThrowsError(RangeError, function () {
    new Array(-1);
  }, "new Array(-1) should throw RangeError");
}

testNegativeArrayLength();
