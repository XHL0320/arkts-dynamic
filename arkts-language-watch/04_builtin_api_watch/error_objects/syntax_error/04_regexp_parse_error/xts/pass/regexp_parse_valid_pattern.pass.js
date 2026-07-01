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

function testValidRegExp() {
  const regexp = new RegExp("a+");
  assertCondition(regexp.test("aaa"), "valid RegExp should compile and match");
}

testValidRegExp();
