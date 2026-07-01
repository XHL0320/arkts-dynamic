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

function testBigIntWidthNegative() {
  assertThrowsError(RangeError, function () {
    BigInt.asIntN(-1, 1n);
  }, "BigInt.asIntN negative width should throw RangeError");
}

testBigIntWidthNegative();
