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

function testInvalidParameterSyntax() {
  assertThrowsError(SyntaxError, () => {
    new Function("...rest", "extra", "return 1;");
  }, "invalid rest parameter syntax should throw SyntaxError");
}

testInvalidParameterSyntax();
