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

function testStringRepeatNegative(): void {
  assertThrowsError(RangeError, (): void => {
    "a".repeat(-1);
  }, "repeat(-1) should throw RangeError");
}

testStringRepeatNegative();
