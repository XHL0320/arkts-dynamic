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

function testSymbolToPrimitiveReturnsObject() {
  assertThrowsTypeError(function () {
    const obj = {
      [Symbol.toPrimitive]: function () {
        return {};
      },
    };
    String(obj);
  }, "Symbol.toPrimitive returning object should throw TypeError");
}

testSymbolToPrimitiveReturnsObject();
