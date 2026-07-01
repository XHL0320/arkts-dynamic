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

function testThrowCatchSyntaxError() {
  assertThrowsError(SyntaxError, function () {
    throw new SyntaxError("sample");
  }, "throw new SyntaxError should be caught");
}

testThrowCatchSyntaxError();
