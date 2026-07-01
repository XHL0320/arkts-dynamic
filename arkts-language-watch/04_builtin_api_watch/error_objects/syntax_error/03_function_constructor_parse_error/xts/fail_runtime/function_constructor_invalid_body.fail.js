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

function testFunctionConstructorInvalidBody() {
  assertThrowsError(SyntaxError, function () {
    new Function("return function {");
  }, "invalid Function constructor body should throw SyntaxError");
}

testFunctionConstructorInvalidBody();
