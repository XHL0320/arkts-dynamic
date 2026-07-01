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

function testprivatenamescopedifferenceprobe(): void {
  assertCondition(true, "reference_error/07_private_name_or_scope_difference requires mapping, parser, host, or non-standard runtime harness");
}

testprivatenamescopedifferenceprobe();
