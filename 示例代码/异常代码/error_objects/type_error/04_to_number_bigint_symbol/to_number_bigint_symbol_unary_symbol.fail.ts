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

function testUnarySymbol(): void {
  assertThrowsTypeError((): void => {
    const value: number = Symbol("x") as unknown as number;
    +value;
  }, "unary plus Symbol should throw TypeError");
}

testUnarySymbol();
