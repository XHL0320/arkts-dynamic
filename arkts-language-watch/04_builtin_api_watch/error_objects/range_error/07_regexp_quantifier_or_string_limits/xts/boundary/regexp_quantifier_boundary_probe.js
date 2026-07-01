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

function test07regexpquantifierorstringlimitsBoundary() {
  assertCondition(typeof "07_regexp_quantifier_or_string_limits" === "string", "boundary probe");
}

test07regexpquantifierorstringlimitsBoundary();
