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

function testThrowCatchTypeError() {
  assertThrowsTypeError(function () {
    throw new TypeError("runtime type error");
  }, "throw new TypeError should be caught as TypeError");
}

testThrowCatchTypeError();
