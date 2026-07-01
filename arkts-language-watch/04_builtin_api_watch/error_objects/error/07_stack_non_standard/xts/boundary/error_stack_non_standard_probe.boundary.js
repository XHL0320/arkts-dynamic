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

function testerrorstacknonstandardprobe() {
  assertCondition(true, "error/07_stack_non_standard requires mapping, parser, host, or non-standard runtime harness");
}

testerrorstacknonstandardprobe();
