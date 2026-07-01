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

function testMapGetPlainObjectReceiver(): void {
  assertThrowsTypeError((): void => {
    (Map.prototype.get as Function).call({}, "a");
  }, "Map.prototype.get.call({}) should throw TypeError");
}

testMapGetPlainObjectReceiver();
