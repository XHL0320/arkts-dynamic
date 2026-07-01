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

function testValidArrayLength(): void {
  const arr: number[] = new Array<number>(3);
  arr.length = 2;
  assertCondition(arr.length === 2, "valid array length should be accepted");
}

testValidArrayLength();
