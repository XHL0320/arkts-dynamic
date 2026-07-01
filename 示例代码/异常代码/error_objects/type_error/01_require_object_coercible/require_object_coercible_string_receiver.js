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

function testStringTrimValidReceiver() {
  const result = "  arkts  ".trim();
  assertCondition(result === "arkts", "String.prototype.trim should work on string receiver");
}

testStringTrimValidReceiver();
