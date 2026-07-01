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

function testURIErrorObjectBehavior(): void {
  const err: URIError = new URIError("sample");
  assertCondition(err instanceof URIError, "expected URIError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "URIError", "unexpected name");
  assertCondition(err.message === "sample", "unexpected message");
}

testURIErrorObjectBehavior();
