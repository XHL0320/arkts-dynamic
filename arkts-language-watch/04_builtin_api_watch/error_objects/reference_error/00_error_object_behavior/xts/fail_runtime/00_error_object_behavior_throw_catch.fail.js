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

function testThrowCatchReferenceError() {
  assertThrowsError(ReferenceError, function () {
    throw new ReferenceError("sample");
  }, "throw new ReferenceError should be caught");
}

testThrowCatchReferenceError();
