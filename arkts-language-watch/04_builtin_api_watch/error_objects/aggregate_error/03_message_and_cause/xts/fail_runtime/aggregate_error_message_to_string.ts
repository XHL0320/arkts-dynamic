function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError<T extends Error>(ctor: new (...args: never[]) => T, action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testAggregateErrorMessageCause(): void {
  const cause: Error = new Error("cause");
  const err: AggregateError = new AggregateError([], "msg", { cause });
  assertCondition(err.message === "msg", "unexpected message");
  assertCondition(err.cause === cause, "unexpected cause");
}

testAggregateErrorMessageCause();
