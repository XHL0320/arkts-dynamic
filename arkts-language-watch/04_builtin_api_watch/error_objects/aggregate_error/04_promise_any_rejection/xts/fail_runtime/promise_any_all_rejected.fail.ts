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

async function testPromiseAnyAllRejected(): Promise<void> {
  try {
    await Promise.any([Promise.reject("a"), Promise.reject("b")]);
  } catch (e) {
    assertCondition(e instanceof AggregateError, "Promise.any all rejected should throw AggregateError");
    const err: AggregateError = e as AggregateError;
    assertCondition(err.errors.length === 2, "AggregateError.errors should contain rejection reasons");
    return;
  }
  throw new Error("Promise.any all rejected should throw");
}

testPromiseAnyAllRejected();
