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

function testRangeErrorObjectBehavior(): void {
  const err: RangeError = new RangeError("sample");
  assertCondition(err instanceof RangeError, "expected RangeError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "RangeError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testRangeErrorObjectBehavior();
