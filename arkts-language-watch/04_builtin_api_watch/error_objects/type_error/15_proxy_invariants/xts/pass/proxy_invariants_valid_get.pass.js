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

function testProxyValidGet() {
  const proxy = new Proxy({ x: 1 }, {
    get(target, property) {
      return target[property];
    },
  });
  assertCondition(proxy.x === 1, "valid proxy get should return target value");
}

testProxyValidGet();
