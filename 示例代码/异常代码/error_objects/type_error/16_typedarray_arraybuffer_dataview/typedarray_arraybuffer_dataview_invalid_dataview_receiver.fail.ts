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

function testDataViewInvalidReceiver(): void {
  assertThrowsTypeError((): void => {
    (DataView.prototype.getInt8 as Function).call({}, 0);
  }, "DataView.prototype.getInt8.call({}) should throw TypeError");
}

testDataViewInvalidReceiver();
