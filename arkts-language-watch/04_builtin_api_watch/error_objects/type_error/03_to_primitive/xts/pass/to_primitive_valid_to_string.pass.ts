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

function testValidToPrimitive(): void {
  const obj = {
    toString: (): string => "arkts",
  };
  assertCondition(String(obj) === "arkts", "valid toString should convert object");
}

testValidToPrimitive();
