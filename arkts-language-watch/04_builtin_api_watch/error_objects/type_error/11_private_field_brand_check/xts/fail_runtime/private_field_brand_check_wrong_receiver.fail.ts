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

class PrivateBrandBox {
  #value: number = 3;

  read(): number {
    return this.#value;
  }
}

function testPrivateFieldWrongReceiver(): void {
  assertThrowsTypeError((): void => {
    const read: Function = PrivateBrandBox.prototype.read as unknown as Function;
    read.call({});
  }, "private field access on wrong receiver should throw TypeError");
}

testPrivateFieldWrongReceiver();
