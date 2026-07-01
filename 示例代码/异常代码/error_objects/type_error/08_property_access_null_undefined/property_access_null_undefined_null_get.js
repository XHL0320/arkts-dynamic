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

function testNullPropertyGet() {
  assertThrowsTypeError(function () {
    const value = null;
    value.x;
  }, "null property get should throw TypeError");
}

testNullPropertyGet();
