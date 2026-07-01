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

function testThrowCatchTypeError(): void {
  assertThrowsTypeError((): void => {
    throw new TypeError("runtime type error");
  }, "throw new TypeError should be caught as TypeError");
}

testThrowCatchTypeError();
