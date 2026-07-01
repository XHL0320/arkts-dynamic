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

function testNullPropertyGet(): void {
  assertThrowsTypeError((): void => {
    const value = null as unknown as { x: number };
    value.x;
  }, "null property get should throw TypeError");
}

testNullPropertyGet();
