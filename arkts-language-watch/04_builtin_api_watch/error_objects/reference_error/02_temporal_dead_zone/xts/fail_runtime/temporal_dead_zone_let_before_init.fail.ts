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

function testLetBeforeInitialization(): void {
  assertThrowsError(ReferenceError, (): void => {
    eval("value; let value = 1;");
  }, "reading let binding before initialization should throw ReferenceError");
}

testLetBeforeInitialization();
