function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testStringTrimValidReceiver(): void {
  const result: string = "  arkts  ".trim();
  assertCondition(result === "arkts", "String.prototype.trim should work on string receiver");
}

testStringTrimValidReceiver();
