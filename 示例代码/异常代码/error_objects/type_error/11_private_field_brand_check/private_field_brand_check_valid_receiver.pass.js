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

class PrivateBox {
  #value = 3;

  read() {
    return this.#value;
  }
}

function testPrivateFieldValidReceiver() {
  const box = new PrivateBox();
  assertCondition(box.read() === 3, "private field should be read on branded receiver");
}

testPrivateFieldValidReceiver();
