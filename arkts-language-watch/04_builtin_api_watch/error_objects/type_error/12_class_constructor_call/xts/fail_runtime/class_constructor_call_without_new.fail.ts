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

class CallableClass {
  value: number = 1;
}

function testClassWithoutNew(): void {
  assertThrowsTypeError((): void => {
    const ctor: () => void = CallableClass as unknown as () => void;
    ctor();
  }, "calling class constructor without new should throw TypeError");
}

testClassWithoutNew();
