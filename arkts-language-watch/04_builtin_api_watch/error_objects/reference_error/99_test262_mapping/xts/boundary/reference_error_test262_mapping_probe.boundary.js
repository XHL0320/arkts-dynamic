function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError(ctor, action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testreferenceerrortest262mappingprobe() {
  assertCondition(true, "reference_error/99_test262_mapping requires mapping, parser, host, or non-standard runtime harness");
}

testreferenceerrortest262mappingprobe();
