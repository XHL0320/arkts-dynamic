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

function testMapWithoutNew(): void {
  assertThrowsTypeError((): void => {
    const mapFactory: () => unknown = Map as unknown as () => unknown;
    mapFactory();
  }, "Map() without new should throw TypeError");
}

testMapWithoutNew();
