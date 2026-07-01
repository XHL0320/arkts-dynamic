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

function testMapWithNew() {
  const map = new Map();
  map.set("x", 1);
  assertCondition(map.get("x") === 1, "Map should be constructible with new");
}

testMapWithNew();
