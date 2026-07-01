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

function testBigIntWidthValid(): void {
  const value: bigint = BigInt.asIntN(8, 1n);
  assertCondition(value === 1n, "BigInt.asIntN valid width should work");
}

testBigIntWidthValid();
