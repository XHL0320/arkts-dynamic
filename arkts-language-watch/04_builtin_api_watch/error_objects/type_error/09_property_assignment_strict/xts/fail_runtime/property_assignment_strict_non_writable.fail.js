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

function testWriteNonWritableProperty() {
  assertThrowsTypeError(function () {
    "use strict";
    const obj = { x: 1 };
    Object.defineProperty(obj, "x", { writable: false });
    obj.x = 2;
  }, "strict write to non-writable property should throw TypeError");
}

testWriteNonWritableProperty();
