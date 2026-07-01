function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError(ctor, action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

function testArrayBufferLengthValid() {
  const buffer = new ArrayBuffer(4);
  assertCondition(buffer.byteLength === 4, "valid ArrayBuffer length should work");
}

testArrayBufferLengthValid();
