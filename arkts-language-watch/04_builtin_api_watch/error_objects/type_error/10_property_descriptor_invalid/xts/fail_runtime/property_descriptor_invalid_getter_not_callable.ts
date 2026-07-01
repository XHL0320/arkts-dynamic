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

function testGetterNotCallable(): void {
  assertThrowsTypeError((): void => {
    (Object.defineProperty as Function)({}, "x", { get: 1 });
  }, "getter descriptor value must be callable or undefined");
}

testGetterNotCallable();
