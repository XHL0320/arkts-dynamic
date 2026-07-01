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

function testStringTrimNullReceiver(): void {
  assertThrowsTypeError((): void => {
    (String.prototype.trim as Function).call(null);
  }, "String.prototype.trim.call(null) should throw TypeError");
}

testStringTrimNullReceiver();
