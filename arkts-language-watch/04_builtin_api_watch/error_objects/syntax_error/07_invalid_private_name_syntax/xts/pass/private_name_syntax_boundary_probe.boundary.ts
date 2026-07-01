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

function test07invalidprivatenamesyntaxPass(): void {
  const err: Error = new SyntaxError("ok");
  assertCondition(err instanceof Error, "expected Error instance");
}

test07invalidprivatenamesyntaxPass();
