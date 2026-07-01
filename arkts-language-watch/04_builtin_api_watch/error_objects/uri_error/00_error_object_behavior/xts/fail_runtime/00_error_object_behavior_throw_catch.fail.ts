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

function testThrowCatchURIError(): void {
  assertThrowsError(URIError, (): void => {
    throw new URIError("sample");
  }, "throw new URIError should be caught");
}

testThrowCatchURIError();
