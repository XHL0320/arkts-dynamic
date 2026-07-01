function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testTypeErrorObjectConstructor() {
  const err = new TypeError("bad receiver");
  assertCondition(err instanceof TypeError, "expected TypeError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "TypeError", "unexpected name");
  assertCondition(err.message === "bad receiver", "unexpected message");
  assertCondition(String(err) === "TypeError: bad receiver", "unexpected toString");
}

testTypeErrorObjectConstructor();
