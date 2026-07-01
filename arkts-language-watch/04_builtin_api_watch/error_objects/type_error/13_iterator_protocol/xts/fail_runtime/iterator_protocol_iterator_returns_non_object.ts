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

function testIteratorReturnsNonObject(): void {
  assertThrowsTypeError((): void => {
    const badIterable = {
      [Symbol.iterator]: (): unknown => 1,
    };
    Array.from(badIterable as Iterable<number>);
  }, "@@iterator returning non-object should throw TypeError");
}

testIteratorReturnsNonObject();
