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

function testSuppressedErrorUnsupportedFeatureProbe() {
  const supported = typeof SuppressedError !== "undefined";
  assertCondition(typeof supported === "boolean", "SuppressedError support probe should produce boolean");
}

testSuppressedErrorUnsupportedFeatureProbe();
