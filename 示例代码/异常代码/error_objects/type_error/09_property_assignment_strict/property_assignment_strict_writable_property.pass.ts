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

function testWritableProperty(): void {
  const obj: { x: number } = { x: 1 };
  obj.x = 2;
  assertCondition(obj.x === 2, "writable property should be assigned");
}

testWritableProperty();
