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

function testObjectPropertyGet() {
  const value = { x: 1 };
  assertCondition(value.x === 1, "object property get should work");
}

testObjectPropertyGet();
