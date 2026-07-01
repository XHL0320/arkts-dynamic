function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testStringTrimNullReceiver() {
  assertThrowsTypeError(function () {
    String.prototype.trim.call(null);
  }, "String.prototype.trim.call(null) should throw TypeError");
}

testStringTrimNullReceiver();
