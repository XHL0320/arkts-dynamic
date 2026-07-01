function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testProxyGetInvariantViolation() {
  assertThrowsTypeError(function () {
    const target = { x: 1 };
    Object.defineProperty(target, "x", {
      value: 1,
      writable: false,
      configurable: false,
    });
    const proxy = new Proxy(target, {
      get() {
        return 2;
      },
    });
    proxy.x;
  }, "proxy get invariant violation should throw TypeError");
}

testProxyGetInvariantViolation();
