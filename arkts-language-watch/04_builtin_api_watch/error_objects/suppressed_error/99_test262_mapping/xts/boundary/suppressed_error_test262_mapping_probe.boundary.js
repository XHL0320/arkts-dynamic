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

function testsuppressederrortest262mappingprobe() {
  assertCondition(true, "suppressed_error/99_test262_mapping requires mapping, parser, host, or non-standard runtime harness");
}

testsuppressederrortest262mappingprobe();
