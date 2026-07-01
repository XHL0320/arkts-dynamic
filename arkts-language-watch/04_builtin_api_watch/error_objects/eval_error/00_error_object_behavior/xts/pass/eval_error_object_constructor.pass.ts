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

function testEvalErrorObjectConstructor(): void {
  const err: EvalError = new EvalError("legacy");
  assertCondition(err instanceof EvalError, "expected EvalError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "EvalError", "unexpected EvalError name");
  assertCondition(err.message === "legacy", "unexpected EvalError message");
}

testEvalErrorObjectConstructor();
