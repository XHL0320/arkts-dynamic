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

class ConstructedClass {
  value: number = 1;
}

function testClassWithNew(): void {
  const obj: ConstructedClass = new ConstructedClass();
  assertCondition(obj.value === 1, "class constructor should work with new");
}

testClassWithNew();
