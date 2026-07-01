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

function testJsonStringifyNumber(): void {
  assertCondition(JSON.stringify({ x: 1 }) === "{\"x\":1}", "JSON.stringify should support number property");
}

testJsonStringifyNumber();
