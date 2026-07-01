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

"use strict";

function testWritableProperty() {
  const obj = { x: 1 };
  obj.x = 2;
  assertCondition(obj.x === 2, "writable property should be assigned");
}

testWritableProperty();
