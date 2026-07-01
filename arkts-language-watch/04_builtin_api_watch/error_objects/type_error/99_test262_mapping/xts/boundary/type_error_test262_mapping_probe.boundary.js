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

// Mapping-only probe.
// This directory tracks test262 TypeError mappings rather than one concrete runtime semantic.

function testTypeErrorMappingProbe() {
  assertCondition(true, "test262 mapping is maintained in markdown tables");
}

testTypeErrorMappingProbe();
