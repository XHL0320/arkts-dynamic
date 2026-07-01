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

function testPromiseThenValidReceiver(): void {
  const promise: Promise<number> = Promise.resolve(1);
  const next: Promise<number> = promise.then((value: number): number => value + 1);
  assertCondition(next instanceof Promise, "Promise.prototype.then should return Promise");
}

testPromiseThenValidReceiver();
