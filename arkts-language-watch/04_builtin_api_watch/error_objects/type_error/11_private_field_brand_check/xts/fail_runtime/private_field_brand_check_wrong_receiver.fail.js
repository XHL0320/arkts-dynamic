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

class PrivateBrandBox {
  #value = 3;

  read() {
    return this.#value;
  }
}

function testPrivateFieldWrongReceiver() {
  assertThrowsTypeError(function () {
    const read = PrivateBrandBox.prototype.read;
    read.call({});
  }, "private field access on wrong receiver should throw TypeError");
}

testPrivateFieldWrongReceiver();
