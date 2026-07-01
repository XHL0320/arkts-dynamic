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

function testReflectOwnKeysObject() {
  const keys = Reflect.ownKeys({ x: 1 });
  assertCondition(keys.length === 1 && keys[0] === "x", "Reflect.ownKeys should work on object");
}

testReflectOwnKeysObject();
