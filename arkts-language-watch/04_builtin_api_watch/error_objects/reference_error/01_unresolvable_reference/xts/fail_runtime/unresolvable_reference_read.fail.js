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

function testUnresolvableReferenceRead() {
  assertThrowsError(ReferenceError, function () {
    eval("missingRuntimeBinding");
  }, "reading undeclared binding should throw ReferenceError");
}

testUnresolvableReferenceRead();
