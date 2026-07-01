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

function testBigIntWidthValid() {
  const value = BigInt.asIntN(8, 1n);
  assertCondition(value === 1n, "BigInt.asIntN valid width should work");
}

testBigIntWidthValid();
