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

function testTypeofTemporalDeadZone(): void {
  assertThrowsError(ReferenceError, (): void => {
    eval("typeof value; let value = 1;");
  }, "typeof TDZ binding should throw ReferenceError");
}

testTypeofTemporalDeadZone();
