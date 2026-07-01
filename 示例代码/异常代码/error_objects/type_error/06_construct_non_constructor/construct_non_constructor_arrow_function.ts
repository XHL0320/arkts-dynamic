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

function testNewArrowFunction(): void {
  assertThrowsTypeError((): void => {
    const arrow = (): number => 1;
    new (arrow as unknown as { new(): object })();
  }, "new arrow function should throw TypeError");
}

testNewArrowFunction();
