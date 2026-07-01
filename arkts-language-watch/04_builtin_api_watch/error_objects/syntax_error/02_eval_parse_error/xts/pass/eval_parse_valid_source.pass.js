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

function testEvalValidSource() {
  const result = eval("1 + 1");
  assertCondition(result === 2, "valid eval source should execute");
}

testEvalValidSource();
