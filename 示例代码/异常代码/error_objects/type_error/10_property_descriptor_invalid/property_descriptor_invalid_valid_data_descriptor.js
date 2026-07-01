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

function testValidDataDescriptor() {
  const target = {};
  Object.defineProperty(target, "x", { value: 1, configurable: true });
  assertCondition(target.x === 1, "valid data descriptor should define property");
}

testValidDataDescriptor();
