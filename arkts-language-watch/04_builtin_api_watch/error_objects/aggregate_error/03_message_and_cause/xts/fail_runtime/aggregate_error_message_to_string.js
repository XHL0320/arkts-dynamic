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

function testAggregateErrorMessageCause() {
  const cause = new Error("cause");
  const err = new AggregateError([], "msg", { cause });
  assertCondition(err.message === "msg", "unexpected message");
  assertCondition(err.cause === cause, "unexpected cause");
}

testAggregateErrorMessageCause();
