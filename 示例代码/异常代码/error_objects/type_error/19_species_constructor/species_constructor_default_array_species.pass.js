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

function testDefaultArraySpecies() {
  const result = [1, 2].map(function (value) {
    return value + 1;
  });
  assertCondition(result.length === 2 && result[0] === 2, "default Array species should construct Array");
}

testDefaultArraySpecies();
