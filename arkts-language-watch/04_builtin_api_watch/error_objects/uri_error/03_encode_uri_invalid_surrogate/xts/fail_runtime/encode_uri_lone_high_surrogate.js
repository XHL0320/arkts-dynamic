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

function testEncodeUriLoneHighSurrogate() {
  assertThrowsError(URIError, () => {
    encodeURI("\uD800");
  }, "encodeURI lone high surrogate should throw URIError");
}

testEncodeUriLoneHighSurrogate();
