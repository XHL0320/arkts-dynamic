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

function testIteratorReturnsNonObject() {
  assertThrowsTypeError(function () {
    const badIterable = {
      [Symbol.iterator]: function () {
        return 1;
      },
    };
    Array.from(badIterable);
  }, "@@iterator returning non-object should throw TypeError");
}

testIteratorReturnsNonObject();
