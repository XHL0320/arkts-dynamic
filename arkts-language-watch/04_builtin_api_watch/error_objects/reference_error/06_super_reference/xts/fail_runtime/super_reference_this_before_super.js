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

function testThisBeforeSuper() {
  assertThrowsError(ReferenceError, () => {
    eval("class A {}; class B extends A { constructor() { this.x = 1; super(); } }; new B();");
  }, "this before super should throw ReferenceError");
}

testThisBeforeSuper();
