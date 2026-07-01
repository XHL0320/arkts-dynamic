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

function testDecodeUriValidEscape() {
  assertCondition(decodeURI("https://example.com/a%20b") === "https://example.com/a b", "valid URI escape should decode");
}

testDecodeUriValidEscape();
