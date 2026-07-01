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

function testValidToPrimitive() {
  const obj = {
    toString: function () {
      return "arkts";
    },
  };
  assertCondition(String(obj) === "arkts", "valid toString should convert object");
}

testValidToPrimitive();
