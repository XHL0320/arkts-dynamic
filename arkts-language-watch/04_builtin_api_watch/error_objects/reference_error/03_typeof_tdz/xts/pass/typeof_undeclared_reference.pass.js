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

function testTypeofUndeclared() {
  const result = eval("typeof notDeclaredForTypeof");
  assertCondition(result === "undefined", "typeof undeclared should return undefined");
}

testTypeofUndeclared();
