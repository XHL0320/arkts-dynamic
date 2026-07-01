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

function testCallNumberValue() {
  assertThrowsTypeError(function () {
    const value = 1;
    value();
  }, "calling a number should throw TypeError");
}

testCallNumberValue();
