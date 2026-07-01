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

function testValidArrayLength() {
  const arr = new Array(3);
  arr.length = 2;
  assertCondition(arr.length === 2, "valid array length should be accepted");
}

testValidArrayLength();
