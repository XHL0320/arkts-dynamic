function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

class CallableClass {
  constructor() {
    this.value = 1;
  }
}

function testClassWithoutNew() {
  assertThrowsTypeError(function () {
    const ctor = CallableClass;
    ctor();
  }, "calling class constructor without new should throw TypeError");
}

testClassWithoutNew();
