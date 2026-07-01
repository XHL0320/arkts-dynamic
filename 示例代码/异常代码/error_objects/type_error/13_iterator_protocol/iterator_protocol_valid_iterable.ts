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

function testValidIterable(): void {
  const values: number[] = Array.from([1, 2, 3]);
  assertCondition(values.length === 3, "Array.from should work on valid iterable");
}

testValidIterable();
