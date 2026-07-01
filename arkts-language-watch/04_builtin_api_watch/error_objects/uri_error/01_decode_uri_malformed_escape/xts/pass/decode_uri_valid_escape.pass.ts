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

function testDecodeUriValidEscape(): void {
  assertCondition(decodeURI("https://example.com/a%20b") === "https://example.com/a b", "valid URI escape should decode");
}

testDecodeUriValidEscape();
