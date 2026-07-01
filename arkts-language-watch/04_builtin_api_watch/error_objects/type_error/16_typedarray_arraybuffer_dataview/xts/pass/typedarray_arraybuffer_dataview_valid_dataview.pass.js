function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testDataViewValidReceiver() {
  const buffer = new ArrayBuffer(4);
  const view = new DataView(buffer);
  view.setInt8(0, 7);
  assertCondition(view.getInt8(0) === 7, "DataView should work on valid receiver");
}

testDataViewValidReceiver();
