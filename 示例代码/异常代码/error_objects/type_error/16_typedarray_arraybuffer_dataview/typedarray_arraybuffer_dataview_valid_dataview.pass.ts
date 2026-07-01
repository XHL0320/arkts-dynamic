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

function testDataViewValidReceiver(): void {
  const buffer: ArrayBuffer = new ArrayBuffer(4);
  const view: DataView = new DataView(buffer);
  view.setInt8(0, 7);
  assertCondition(view.getInt8(0) === 7, "DataView should work on valid receiver");
}

testDataViewValidReceiver();
