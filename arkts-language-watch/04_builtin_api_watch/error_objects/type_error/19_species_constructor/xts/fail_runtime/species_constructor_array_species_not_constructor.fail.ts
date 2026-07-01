function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

class BadSpeciesArray<T> extends Array<T> {}

function testArraySpeciesNotConstructor(): void {
  assertThrowsTypeError((): void => {
    Object.defineProperty(BadSpeciesArray, Symbol.species, {
      configurable: true,
      value: {},
    });
    const values: BadSpeciesArray<number> = new BadSpeciesArray<number>(1, 2);
    values.map((value: number): number => value + 1);
  }, "Array species returning non-constructor should throw TypeError");
}

testArraySpeciesNotConstructor();
