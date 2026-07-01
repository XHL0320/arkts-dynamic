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

function testEvalSyntaxIsNotEvalError() {
  assertThrowsError(SyntaxError, () => {
    eval("function {");
  }, "eval parse failure should throw SyntaxError, not EvalError");
}

testEvalSyntaxIsNotEvalError();
