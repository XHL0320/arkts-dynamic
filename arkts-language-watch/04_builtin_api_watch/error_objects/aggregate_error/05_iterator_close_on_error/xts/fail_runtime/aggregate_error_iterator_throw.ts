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

function testAggregateErrorIteratorThrow(): void {
  assertThrowsError(Error, (): void => {
    const iterable = {
      [Symbol.iterator](): Iterator<Error> {
        throw new Error("iterator failed");
      },
    };
    new AggregateError(iterable, "bad iterator");
  }, "AggregateError constructor should propagate iterator error");
}

testAggregateErrorIteratorThrow();
