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

function testPromiseThenInvalidReceiver() {
  assertThrowsTypeError(function () {
    Promise.prototype.then.call({}, function () {});
  }, "Promise.prototype.then.call({}) should throw TypeError");
}

testPromiseThenInvalidReceiver();
