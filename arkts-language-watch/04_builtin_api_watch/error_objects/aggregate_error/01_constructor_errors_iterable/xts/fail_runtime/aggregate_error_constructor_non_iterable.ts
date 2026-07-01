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

function testAggregateErrorNonIterableErrors(): void {
  assertThrowsError(TypeError, (): void => {
    new AggregateError(1 as unknown as Iterable<Error>, "bad");
  }, "AggregateError non-iterable errors should throw TypeError");
}

testAggregateErrorNonIterableErrors();
