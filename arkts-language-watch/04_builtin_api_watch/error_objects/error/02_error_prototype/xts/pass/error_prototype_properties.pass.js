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

function test02errorprototypePass() {
  const err = new Error("ok");
  assertCondition(err instanceof Error, "expected Error instance");
}

test02errorprototypePass();
