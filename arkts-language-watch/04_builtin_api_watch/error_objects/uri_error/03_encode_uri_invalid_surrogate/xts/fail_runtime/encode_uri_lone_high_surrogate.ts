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

function testEncodeUriLoneHighSurrogate(): void {
  assertThrowsError(URIError, (): void => {
    encodeURI("\uD800");
  }, "encodeURI lone high surrogate should throw URIError");
}

testEncodeUriLoneHighSurrogate();
