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

function testToFixedValidDigits() {
  assertCondition((1).toFixed(2) === "1.00", "toFixed(2) should work");
}

testToFixedValidDigits();
