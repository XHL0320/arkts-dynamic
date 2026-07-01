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

function testThrowCatchError() {
  assertThrowsError(Error, function () {
    throw new Error("sample");
  }, "throw new Error should be caught");
}

testThrowCatchError();
