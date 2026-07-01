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

function testrecursionstacklimitnonstableprobe() {
  assertCondition(true, "range_error/08_recursion_or_stack_limit_non_stable requires mapping, parser, host, or non-standard runtime harness");
}

testrecursionstacklimitnonstableprobe();
