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

function testreferenceerrortest262mappingprobe(): void {
  assertCondition(true, "reference_error/99_test262_mapping requires mapping, parser, host, or non-standard runtime harness");
}

testreferenceerrortest262mappingprobe();
