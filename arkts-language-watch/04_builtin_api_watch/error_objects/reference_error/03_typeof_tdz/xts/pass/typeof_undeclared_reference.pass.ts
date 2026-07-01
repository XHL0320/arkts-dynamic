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

function testTypeofUndeclared(): void {
  const result: string = eval("typeof notDeclaredForTypeof");
  assertCondition(result === "undefined", "typeof undeclared should return undefined");
}

testTypeofUndeclared();
