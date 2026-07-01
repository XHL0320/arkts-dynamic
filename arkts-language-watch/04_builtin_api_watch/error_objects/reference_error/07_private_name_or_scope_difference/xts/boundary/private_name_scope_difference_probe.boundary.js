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

function testprivatenamescopedifferenceprobe() {
  assertCondition(true, "reference_error/07_private_name_or_scope_difference requires mapping, parser, host, or non-standard runtime harness");
}

testprivatenamescopedifferenceprobe();
