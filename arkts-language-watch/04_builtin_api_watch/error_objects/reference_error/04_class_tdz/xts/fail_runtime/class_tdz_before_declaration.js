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

function testClassTdzBeforeDeclaration() {
  assertThrowsError(ReferenceError, () => {
    eval("C; class C {}");
  }, "class binding before initialization should throw ReferenceError");
}

testClassTdzBeforeDeclaration();
