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

function testThrowCatchEvalError(): void {
  assertThrowsError(EvalError, (): void => {
    throw new EvalError("legacy runtime error");
  }, "throw new EvalError should be caught as EvalError");
}

testThrowCatchEvalError();
