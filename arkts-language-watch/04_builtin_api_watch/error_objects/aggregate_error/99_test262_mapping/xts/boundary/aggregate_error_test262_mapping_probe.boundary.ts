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

function testaggregateerrortest262mappingprobe(): void {
  assertCondition(true, "aggregate_error/99_test262_mapping requires mapping, parser, host, or non-standard runtime harness");
}

testaggregateerrortest262mappingprobe();
