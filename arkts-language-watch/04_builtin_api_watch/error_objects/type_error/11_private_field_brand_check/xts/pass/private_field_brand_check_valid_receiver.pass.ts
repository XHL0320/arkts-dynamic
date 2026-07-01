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

class PrivateBox {
  #value: number = 3;

  read(): number {
    return this.#value;
  }
}

function testPrivateFieldValidReceiver(): void {
  const box: PrivateBox = new PrivateBox();
  assertCondition(box.read() === 3, "private field should be read on branded receiver");
}

testPrivateFieldValidReceiver();
