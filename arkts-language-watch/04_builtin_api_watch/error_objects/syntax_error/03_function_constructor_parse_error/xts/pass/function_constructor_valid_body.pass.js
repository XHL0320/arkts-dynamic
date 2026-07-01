function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError(ctor, action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testFunctionConstructorValidBody() {
  const fn = new Function("return 3;");
  assertCondition(fn() === 3, "valid Function constructor body should execute");
}

testFunctionConstructorValidBody();
