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

function testJsonStringifyNumber() {
  assertCondition(JSON.stringify({ x: 1 }) === "{\"x\":1}", "JSON.stringify should support number property");
}

testJsonStringifyNumber();
