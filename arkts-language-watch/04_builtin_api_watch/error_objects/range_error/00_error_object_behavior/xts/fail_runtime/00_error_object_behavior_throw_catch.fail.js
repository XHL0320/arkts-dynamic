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

function testThrowCatchRangeError() {
  assertThrowsError(RangeError, function () {
    throw new RangeError("sample");
  }, "throw new RangeError should be caught");
}

testThrowCatchRangeError();
