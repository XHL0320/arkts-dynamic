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

function testPromiseThenValidReceiver() {
  const promise = Promise.resolve(1);
  const next = promise.then(function (value) {
    return value + 1;
  });
  assertCondition(next instanceof Promise, "Promise.prototype.then should return Promise");
}

testPromiseThenValidReceiver();
