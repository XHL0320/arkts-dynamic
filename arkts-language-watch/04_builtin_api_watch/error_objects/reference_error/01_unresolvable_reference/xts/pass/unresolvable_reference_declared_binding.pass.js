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

function testDeclaredBinding() {
  const declaredValue = 1;
  assertCondition(declaredValue === 1, "declared binding should be readable");
}

testDeclaredBinding();
