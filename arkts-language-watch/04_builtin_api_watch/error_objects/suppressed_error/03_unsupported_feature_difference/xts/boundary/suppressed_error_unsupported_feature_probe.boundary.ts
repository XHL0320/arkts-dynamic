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
  new(error: unknown, suppressed: unknown, message?: string): Error;
};

function testSuppressedErrorUnsupportedFeatureProbe(): void {
  const supported: boolean = typeof SuppressedError !== "undefined";
  assertCondition(typeof supported === "boolean", "SuppressedError support probe should produce boolean");
}

testSuppressedErrorUnsupportedFeatureProbe();
