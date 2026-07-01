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

function test01constructorerrorsiterablePass() {
  const err = new TypeError("ok");
  assertCondition(err instanceof Error, "expected Error instance");
}

test01constructorerrorsiterablePass();
