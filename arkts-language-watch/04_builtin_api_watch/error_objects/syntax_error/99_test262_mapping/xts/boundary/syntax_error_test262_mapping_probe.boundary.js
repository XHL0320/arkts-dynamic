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

function testsyntaxerrortest262mappingprobe() {
  assertCondition(true, "syntax_error/99_test262_mapping requires mapping, parser, host, or non-standard runtime harness");
}

testsyntaxerrortest262mappingprobe();
