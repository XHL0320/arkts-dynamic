function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsTypeError(action: () => void, message: string): void {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof TypeError, message);
    return;
  }
  throw new Error(message);
}

function testProxyValidGet(): void {
  const proxy: { x: number } = new Proxy({ x: 1 }, {
    get(target: { x: number }, property: string | symbol): number | undefined {
      return target[property as "x"];
    },
  });
  assertCondition(proxy.x === 1, "valid proxy get should return target value");
}

testProxyValidGet();
