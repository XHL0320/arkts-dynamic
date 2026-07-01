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

function testThrowCatchURIError() {
  assertThrowsError(URIError, function () {
    throw new URIError("sample");
  }, "throw new URIError should be caught");
}

testThrowCatchURIError();
