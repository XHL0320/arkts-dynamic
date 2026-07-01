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

function callableValue(): number {
  return 7;
}

function testCallableValue(): void {
  assertCondition(callableValue() === 7, "callable value should be invoked");
}

testCallableValue();
