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

function testValidIterable() {
  const values = Array.from([1, 2, 3]);
  assertCondition(values.length === 3, "Array.from should work on valid iterable");
}

testValidIterable();
