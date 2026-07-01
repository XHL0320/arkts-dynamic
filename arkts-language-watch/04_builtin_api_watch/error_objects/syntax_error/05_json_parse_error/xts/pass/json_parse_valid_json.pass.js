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

function testValidJsonParse() {
  const value = JSON.parse("{\"x\":1}");
  assertCondition(value.x === 1, "valid JSON should parse");
}

testValidJsonParse();
