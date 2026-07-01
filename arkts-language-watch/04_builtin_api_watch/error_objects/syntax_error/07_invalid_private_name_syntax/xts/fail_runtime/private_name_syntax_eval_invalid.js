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

function testInvalidPrivateNameSyntax() {
  assertThrowsError(SyntaxError, () => {
    eval("class A {}; A.#x");
  }, "invalid private name syntax should throw SyntaxError");
}

testInvalidPrivateNameSyntax();
