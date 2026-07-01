function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testTypeErrorObjectConstructor(): void {
  const err: TypeError = new TypeError("bad receiver");
  assertCondition(err instanceof TypeError, "expected TypeError instance");
  assertCondition(err instanceof Error, "expected Error instance");
  assertCondition(err.name === "TypeError", "unexpected name");
  assertCondition(err.message === "bad receiver", "unexpected message");
  assertCondition(String(err) === "TypeError: bad receiver", "unexpected toString");
}

testTypeErrorObjectConstructor();
