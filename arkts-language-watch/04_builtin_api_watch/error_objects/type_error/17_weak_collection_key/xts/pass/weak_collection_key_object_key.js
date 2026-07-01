function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testWeakMapObjectKey() {
  const key = {};
  const map = new WeakMap();
  map.set(key, "value");
  assertCondition(map.get(key) === "value", "WeakMap should accept object key");
}

testWeakMapObjectKey();
