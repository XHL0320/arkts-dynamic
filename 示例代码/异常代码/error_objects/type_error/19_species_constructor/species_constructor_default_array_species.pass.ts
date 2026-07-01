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

function testDefaultArraySpecies(): void {
  const result: number[] = [1, 2].map((value: number): number => value + 1);
  assertCondition(result.length === 2 && result[0] === 2, "default Array species should construct Array");
}

testDefaultArraySpecies();
