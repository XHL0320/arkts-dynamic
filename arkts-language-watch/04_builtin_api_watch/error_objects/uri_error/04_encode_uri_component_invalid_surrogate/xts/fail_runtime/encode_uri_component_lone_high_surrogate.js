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

function testEncodeUriComponentLoneHighSurrogate() {
  assertThrowsError(URIError, () => {
    encodeURIComponent("\uD800");
  }, "encodeURIComponent lone high surrogate should throw URIError");
}

testEncodeUriComponentLoneHighSurrogate();
