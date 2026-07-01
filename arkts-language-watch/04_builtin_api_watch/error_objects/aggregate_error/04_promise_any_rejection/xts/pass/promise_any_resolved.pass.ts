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

async function testPromiseAnyResolved(): Promise<void> {
  const value: number = await Promise.any([Promise.reject(new Error("x")), Promise.resolve(5)]);
  assertCondition(value === 5, "Promise.any should resolve with first fulfilled value");
}

testPromiseAnyResolved();
