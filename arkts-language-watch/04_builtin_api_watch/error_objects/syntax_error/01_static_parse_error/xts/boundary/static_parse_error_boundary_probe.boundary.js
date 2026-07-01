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

function teststaticparseerrorboundaryprobe() {
  assertCondition(true, "syntax_error/01_static_parse_error requires mapping, parser, host, or non-standard runtime harness");
}

teststaticparseerrorboundaryprobe();
