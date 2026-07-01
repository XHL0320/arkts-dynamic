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

function testBigIntWidthNegative(): void {
  assertThrowsError(RangeError, (): void => {
    BigInt.asIntN(-1, 1n);
  }, "BigInt.asIntN negative width should throw RangeError");
}

testBigIntWidthNegative();
