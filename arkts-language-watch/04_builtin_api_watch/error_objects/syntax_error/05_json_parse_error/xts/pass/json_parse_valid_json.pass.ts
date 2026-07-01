function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError<T extends Error>(ctor: new (...args: never[]) => T, action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testValidJsonParse(): void {
  const value = JSON.parse("{\"x\":1}") as { x: number };
  assertCondition(value.x === 1, "valid JSON should parse");
}

testValidJsonParse();
