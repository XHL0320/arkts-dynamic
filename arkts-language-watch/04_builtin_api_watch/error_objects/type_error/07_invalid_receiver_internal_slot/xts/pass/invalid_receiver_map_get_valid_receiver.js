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

function testMapGetValidReceiver() {
  const map = new Map([["a", 1]]);
  assertCondition(map.get("a") === 1, "Map.prototype.get should work on Map receiver");
}

testMapGetValidReceiver();
