function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

"use strict";

function testWriteNonWritableProperty(): void {
  assertThrowsTypeError((): void => {
    "use strict";
    const obj: { x: number } = { x: 1 };
    Object.defineProperty(obj, "x", { writable: false });
    obj.x = 2;
  }, "strict write to non-writable property should throw TypeError");
}

testWriteNonWritableProperty();
