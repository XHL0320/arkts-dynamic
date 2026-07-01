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

function testInvalidRegExpPattern() {
  assertThrowsError(SyntaxError, function () {
    new RegExp("[");
  }, "invalid RegExp pattern should throw SyntaxError");
}

testInvalidRegExpPattern();
