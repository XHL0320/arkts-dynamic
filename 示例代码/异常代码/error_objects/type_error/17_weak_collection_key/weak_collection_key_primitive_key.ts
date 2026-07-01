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

function testWeakMapPrimitiveKey(): void {
  assertThrowsTypeError((): void => {
    const map: WeakMap<object, string> = new WeakMap<object, string>();
    (map.set as Function).call(map, 1, "value");
  }, "WeakMap primitive key should throw TypeError");
}

testWeakMapPrimitiveKey();
