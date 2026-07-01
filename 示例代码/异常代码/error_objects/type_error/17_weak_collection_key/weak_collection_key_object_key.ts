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

function testWeakMapObjectKey(): void {
  const key: object = {};
  const map: WeakMap<object, string> = new WeakMap<object, string>();
  map.set(key, "value");
  assertCondition(map.get(key) === "value", "WeakMap should accept object key");
}

testWeakMapObjectKey();
