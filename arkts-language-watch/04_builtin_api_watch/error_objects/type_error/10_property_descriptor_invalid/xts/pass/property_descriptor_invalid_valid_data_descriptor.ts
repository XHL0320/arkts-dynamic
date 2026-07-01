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

function testValidDataDescriptor(): void {
  const target: { x?: number } = {};
  Object.defineProperty(target, "x", { value: 1, configurable: true });
  assertCondition(target.x === 1, "valid data descriptor should define property");
}

testValidDataDescriptor();
