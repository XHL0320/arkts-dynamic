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

function testMapWithoutNew() {
  assertThrowsTypeError(function () {
    const mapFactory = Map;
    mapFactory();
  }, "Map() without new should throw TypeError");
}

testMapWithoutNew();
