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

class ConstructedClass {
  constructor() {
    this.value = 1;
  }
}

function testClassWithNew() {
  const obj = new ConstructedClass();
  assertCondition(obj.value === 1, "class constructor should work with new");
}

testClassWithNew();
