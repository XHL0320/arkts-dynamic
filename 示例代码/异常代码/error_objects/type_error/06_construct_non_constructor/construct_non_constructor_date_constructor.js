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

function testDateConstructor() {
  const value = new Date(0);
  assertCondition(value instanceof Date, "Date should be constructible");
}

testDateConstructor();
