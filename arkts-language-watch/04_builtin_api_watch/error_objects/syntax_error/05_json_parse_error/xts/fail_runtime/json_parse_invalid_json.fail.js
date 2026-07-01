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

function testInvalidJsonParse() {
  assertThrowsError(SyntaxError, function () {
    JSON.parse("{");
  }, "invalid JSON should throw SyntaxError");
}

testInvalidJsonParse();
