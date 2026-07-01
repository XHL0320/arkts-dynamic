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

function testArrayBufferLengthNegative(): void {
  assertThrowsError(RangeError, (): void => {
    new ArrayBuffer(-1);
  }, "negative ArrayBuffer length should throw RangeError");
}

testArrayBufferLengthNegative();
