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

function testMapGetValidReceiver(): void {
  const map: Map<string, number> = new Map<string, number>([["a", 1]]);
  assertCondition(map.get("a") === 1, "Map.prototype.get should work on Map receiver");
}

testMapGetValidReceiver();
