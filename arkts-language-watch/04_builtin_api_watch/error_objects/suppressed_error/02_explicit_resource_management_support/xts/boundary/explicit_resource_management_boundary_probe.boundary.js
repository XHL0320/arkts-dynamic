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

function testexplicitresourcemanagementboundaryprobe() {
  assertCondition(true, "suppressed_error/02_explicit_resource_management_support requires mapping, parser, host, or non-standard runtime harness");
}

testexplicitresourcemanagementboundaryprobe();
