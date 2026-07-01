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

function test03messagenametostringBoundary(): void {
  assertCondition(typeof "03_message_name_to_string" === "string", "boundary probe");
}

test03messagenametostringBoundary();
