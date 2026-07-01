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

function test07regexpquantifierorstringlimitsBoundary(): void {
  assertCondition(typeof "07_regexp_quantifier_or_string_limits" === "string", "boundary probe");
}

test07regexpquantifierorstringlimitsBoundary();
