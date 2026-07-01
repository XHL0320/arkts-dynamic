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

function testJsonStringifyBigInt(): void {
  assertThrowsTypeError((): void => {
    JSON.stringify({ x: BigInt(1) });
  }, "JSON.stringify BigInt should throw TypeError");
}

testJsonStringifyBigInt();
