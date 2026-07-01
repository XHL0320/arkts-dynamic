function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError<T extends Error>(ctor: new (...args: never[]) => T, action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testThisBeforeSuper(): void {
  assertThrowsError(ReferenceError, (): void => {
    eval("class A {}; class B extends A { constructor() { this.x = 1; super(); } }; new B();");
  }, "this before super should throw ReferenceError");
}

testThisBeforeSuper();
