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

function testPromiseThenInvalidReceiver(): void {
  assertThrowsTypeError((): void => {
    (Promise.prototype.then as Function).call({}, (): void => {});
  }, "Promise.prototype.then.call({}) should throw TypeError");
}

testPromiseThenInvalidReceiver();
