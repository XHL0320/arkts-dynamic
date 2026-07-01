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

function testDataViewInvalidReceiver() {
  assertThrowsTypeError(function () {
    DataView.prototype.getInt8.call({}, 0);
  }, "DataView.prototype.getInt8.call({}) should throw TypeError");
}

testDataViewInvalidReceiver();
