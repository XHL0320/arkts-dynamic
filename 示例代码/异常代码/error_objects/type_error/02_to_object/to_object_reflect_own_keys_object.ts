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

function testReflectOwnKeysObject(): void {
  const keys: (string | symbol)[] = Reflect.ownKeys({ x: 1 });
  assertCondition(keys.length === 1 && keys[0] === "x", "Reflect.ownKeys should work on object");
}

testReflectOwnKeysObject();
