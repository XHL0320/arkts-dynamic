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

function testProxyGetInvariantViolation(): void {
  assertThrowsTypeError((): void => {
    const target: { x: number } = { x: 1 };
    Object.defineProperty(target, "x", {
      value: 1,
      writable: false,
      configurable: false,
    });
    const proxy: { x: number } = new Proxy(target, {
      get(): number {
        return 2;
      },
    });
    proxy.x;
  }, "proxy get invariant violation should throw TypeError");
}

testProxyGetInvariantViolation();
