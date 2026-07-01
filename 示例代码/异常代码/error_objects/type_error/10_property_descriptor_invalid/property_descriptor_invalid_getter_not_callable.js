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

function testGetterNotCallable() {
  assertThrowsTypeError(function () {
    Object.defineProperty({}, "x", { get: 1 });
  }, "getter descriptor value must be callable or undefined");
}

testGetterNotCallable();
