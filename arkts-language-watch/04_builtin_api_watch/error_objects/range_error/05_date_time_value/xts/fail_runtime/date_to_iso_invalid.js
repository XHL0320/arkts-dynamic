function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError(ctor, action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testInvalidDateToISOString() {
  assertThrowsError(RangeError, () => {
    new Date(Number.NaN).toISOString();
  }, "invalid Date toISOString should throw RangeError");
}

testInvalidDateToISOString();
