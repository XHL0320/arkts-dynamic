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

function testReflectOwnKeysNull(): void {
  assertThrowsTypeError((): void => {
    (Reflect.ownKeys as Function)(null);
  }, "Reflect.ownKeys(null) should throw TypeError");
}

testReflectOwnKeysNull();
