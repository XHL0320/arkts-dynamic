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

declare const SuppressedError: {
  new(error: unknown, suppressed: unknown, message?: string): Error & { error: unknown; suppressed: unknown };
};

function testSuppressedErrorObjectBehaviorBoundary(): void {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  const err = new SuppressedError(new Error("primary"), new Error("suppressed"), "combined");
  assertCondition(err instanceof Error, "SuppressedError should extend Error when supported");
  assertCondition(err.name === "SuppressedError", "unexpected SuppressedError name");
  assertCondition(err.error instanceof Error, "unexpected error property");
  assertCondition(err.suppressed instanceof Error, "unexpected suppressed property");
}

testSuppressedErrorObjectBehaviorBoundary();
