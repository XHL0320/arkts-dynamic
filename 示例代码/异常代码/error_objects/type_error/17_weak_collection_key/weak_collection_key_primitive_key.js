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

function testWeakMapPrimitiveKey() {
  assertThrowsTypeError(function () {
    const map = new WeakMap();
    map.set(1, "value");
  }, "WeakMap primitive key should throw TypeError");
}

testWeakMapPrimitiveKey();
