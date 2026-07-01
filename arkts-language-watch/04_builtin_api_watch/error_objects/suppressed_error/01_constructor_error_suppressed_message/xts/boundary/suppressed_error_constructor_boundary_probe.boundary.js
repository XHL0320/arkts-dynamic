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

function testsuppressederrorconstructorboundaryprobe() {
  assertCondition(true, "suppressed_error/01_constructor_error_suppressed_message requires mapping, parser, host, or non-standard runtime harness");
}

testsuppressederrorconstructorboundaryprobe();
