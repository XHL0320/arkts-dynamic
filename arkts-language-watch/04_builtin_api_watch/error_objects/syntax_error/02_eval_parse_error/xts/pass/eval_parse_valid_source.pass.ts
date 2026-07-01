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

function testEvalValidSource(): void {
  const result: number = eval("1 + 1") as number;
  assertCondition(result === 2, "valid eval source should execute");
}

testEvalValidSource();
