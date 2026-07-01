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

function testReflectOwnKeysNull() {
  assertThrowsTypeError(function () {
    Reflect.ownKeys(null);
  }, "Reflect.ownKeys(null) should throw TypeError");
}

testReflectOwnKeysNull();
