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

function testObjectPropertyGet(): void {
  const value: { x: number } = { x: 1 };
  assertCondition(value.x === 1, "object property get should work");
}

testObjectPropertyGet();
