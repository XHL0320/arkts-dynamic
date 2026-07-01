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

function testCallNumberValue(): void {
  assertThrowsTypeError((): void => {
    const value: unknown = 1;
    (value as () => void)();
  }, "calling a number should throw TypeError");
}

testCallNumberValue();
