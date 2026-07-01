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

function testDecodeUriComponentMalformedPercent() {
  assertThrowsError(URIError, function () {
    decodeURIComponent("%");
  }, "decodeURIComponent('%') should throw URIError");
}

testDecodeUriComponentMalformedPercent();
