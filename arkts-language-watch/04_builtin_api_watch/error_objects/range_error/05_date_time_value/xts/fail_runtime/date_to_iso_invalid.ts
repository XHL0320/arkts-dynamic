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

function testInvalidDateToISOString(): void {
  assertThrowsError(RangeError, (): void => {
    new Date(Number.NaN).toISOString();
  }, "invalid Date toISOString should throw RangeError");
}

testInvalidDateToISOString();
