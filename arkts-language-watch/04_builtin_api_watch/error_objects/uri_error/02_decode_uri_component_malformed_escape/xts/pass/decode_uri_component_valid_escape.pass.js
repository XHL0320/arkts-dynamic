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

function testDecodeUriComponentValidEscape() {
  assertCondition(decodeURIComponent("a%20b") === "a b", "valid URI component escape should decode");
}

testDecodeUriComponentValidEscape();
