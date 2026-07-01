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

function testMapWithNew(): void {
  const map: Map<string, number> = new Map<string, number>();
  map.set("x", 1);
  assertCondition(map.get("x") === 1, "Map should be constructible with new");
}

testMapWithNew();
