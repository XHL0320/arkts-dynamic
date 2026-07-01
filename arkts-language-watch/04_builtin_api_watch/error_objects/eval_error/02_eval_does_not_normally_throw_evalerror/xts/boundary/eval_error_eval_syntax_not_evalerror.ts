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

function testEvalSyntaxIsNotEvalError(): void {
  assertThrowsError(SyntaxError, (): void => {
    eval("function {");
  }, "eval parse failure should throw SyntaxError, not EvalError");
}

testEvalSyntaxIsNotEvalError();
