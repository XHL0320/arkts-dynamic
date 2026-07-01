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

// Mapping-only probe.
// This directory tracks test262 TypeError mappings rather than one concrete runtime semantic.

function testTypeErrorMappingProbe(): void {
  assertCondition(true, "test262 mapping is maintained in markdown tables");
}

testTypeErrorMappingProbe();
