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

function testThrowCatchReferenceError(): void {
  assertThrowsError(ReferenceError, (): void => {
    throw new ReferenceError("sample");
  }, "throw new ReferenceError should be caught");
}

testThrowCatchReferenceError();
