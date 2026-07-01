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

function testMapGetPlainObjectReceiver() {
  assertThrowsTypeError(function () {
    Map.prototype.get.call({}, "a");
  }, "Map.prototype.get.call({}) should throw TypeError");
}

testMapGetPlainObjectReceiver();
