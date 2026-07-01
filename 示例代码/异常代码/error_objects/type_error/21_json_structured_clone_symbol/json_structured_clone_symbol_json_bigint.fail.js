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

function testJsonStringifyBigInt() {
  assertThrowsTypeError(function () {
    JSON.stringify({ x: 1n });
  }, "JSON.stringify BigInt should throw TypeError");
}

testJsonStringifyBigInt();
