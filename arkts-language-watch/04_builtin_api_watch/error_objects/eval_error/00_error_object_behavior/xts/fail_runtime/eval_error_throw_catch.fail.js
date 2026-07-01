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

function testThrowCatchEvalError() {
  assertThrowsError(EvalError, function () {
    throw new EvalError("legacy runtime error");
  }, "throw new EvalError should be caught as EvalError");
}

testThrowCatchEvalError();
