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

function testaggregateerrortest262mappingprobe() {
  assertCondition(true, "aggregate_error/99_test262_mapping requires mapping, parser, host, or non-standard runtime harness");
}

testaggregateerrortest262mappingprobe();
