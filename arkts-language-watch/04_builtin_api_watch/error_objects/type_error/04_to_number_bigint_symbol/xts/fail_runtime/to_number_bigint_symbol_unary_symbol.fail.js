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

function testUnarySymbol() {
  assertThrowsTypeError(function () {
    +Symbol("x");
  }, "unary plus Symbol should throw TypeError");
}

testUnarySymbol();
