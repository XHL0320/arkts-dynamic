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

function testNewArrowFunction() {
  assertThrowsTypeError(function () {
    const arrow = () => 1;
    new arrow();
  }, "new arrow function should throw TypeError");
}

testNewArrowFunction();
