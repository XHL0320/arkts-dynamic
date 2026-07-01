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

class BadSpeciesArray extends Array {}

function testArraySpeciesNotConstructor() {
  assertThrowsTypeError(function () {
    Object.defineProperty(BadSpeciesArray, Symbol.species, {
      configurable: true,
      value: {},
    });
    const values = new BadSpeciesArray(1, 2);
    values.map(function (value) {
      return value + 1;
    });
  }, "Array species returning non-constructor should throw TypeError");
}

testArraySpeciesNotConstructor();
