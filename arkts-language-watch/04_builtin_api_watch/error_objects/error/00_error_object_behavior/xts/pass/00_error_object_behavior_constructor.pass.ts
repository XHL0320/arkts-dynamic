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

function testErrorObjectBehavior(): void {
  const err: Error = new Error("sample");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "Error", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testErrorObjectBehavior();
