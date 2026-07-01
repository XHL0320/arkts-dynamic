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

function testAggregateErrorErrorsProperty(): void {
  const first: Error = new Error("first");
  const err: AggregateError = new AggregateError([first, 2], "combined");
  assertCondition(err.errors.length === 2, "AggregateError.errors length should match input");
  assertCondition(err.errors[0] === first, "AggregateError.errors should preserve order");
  assertCondition(err.errors[1] === 2, "AggregateError.errors should allow arbitrary values");
}

testAggregateErrorErrorsProperty();
