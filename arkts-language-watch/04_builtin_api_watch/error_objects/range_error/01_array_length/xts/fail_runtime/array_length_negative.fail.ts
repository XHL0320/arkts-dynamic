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

function testNegativeArrayLength(): void {
  assertThrowsError(RangeError, (): void => {
    new Array<number>(-1);
  }, "new Array(-1) should throw RangeError");
}

testNegativeArrayLength();
