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

function testReferenceErrorObjectBehavior(): void {
  const err: ReferenceError = new ReferenceError("sample");
  assertCondition(err instanceof ReferenceError, "expected ReferenceError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "ReferenceError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testReferenceErrorObjectBehavior();
