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

function testArrayBufferLengthValid(): void {
  const buffer: ArrayBuffer = new ArrayBuffer(4);
  assertCondition(buffer.byteLength === 4, "valid ArrayBuffer length should work");
}

testArrayBufferLengthValid();
