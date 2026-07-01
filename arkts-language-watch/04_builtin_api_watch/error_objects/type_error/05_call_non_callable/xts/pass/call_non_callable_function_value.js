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

function callableValue() {
  return 7;
}

function testCallableValue() {
  assertCondition(callableValue() === 7, "callable value should be invoked");
}

testCallableValue();
