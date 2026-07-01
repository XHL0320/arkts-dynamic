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

function testSymbolToPrimitiveReturnsObject(): void {
  assertThrowsTypeError((): void => {
    const key: symbol = Symbol.toPrimitive;
    const obj: { [key: symbol]: () => object } = {
      [key]: (): object => ({}),
    };
    String(obj);
  }, "Symbol.toPrimitive returning object should throw TypeError");
}

testSymbolToPrimitiveReturnsObject();
