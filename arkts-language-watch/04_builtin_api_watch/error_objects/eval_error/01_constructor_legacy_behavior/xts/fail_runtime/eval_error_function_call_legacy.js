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

function testEvalErrorFunctionCall() {
  const err = EvalError("legacy");
  assertCondition(err instanceof EvalError, "EvalError function call should create EvalError");
}

testEvalErrorFunctionCall();
