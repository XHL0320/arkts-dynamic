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

function testEvalErrorObjectConstructor() {
  const err = new EvalError("legacy");
  assertCondition(err instanceof EvalError, "expected EvalError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "EvalError", "unexpected EvalError name");
  assertCondition(err.message === "legacy", "unexpected EvalError message");
}

testEvalErrorObjectConstructor();
