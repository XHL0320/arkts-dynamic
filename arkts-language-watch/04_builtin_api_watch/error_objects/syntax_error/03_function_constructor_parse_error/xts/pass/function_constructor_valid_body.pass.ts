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

function testFunctionConstructorValidBody(): void {
  const fn: Function = new Function("return 3;");
  assertCondition(fn() === 3, "valid Function constructor body should execute");
}

testFunctionConstructorValidBody();
