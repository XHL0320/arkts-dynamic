function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError<T extends Error>(ctor: new (...args: never[]) => T, action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testEvalErrorFunctionCall(): void {
  const err: EvalError = EvalError("legacy");
  assertCondition(err instanceof EvalError, "EvalError function call should create EvalError");
}

testEvalErrorFunctionCall();
