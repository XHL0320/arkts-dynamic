function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 SuppressedError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerSuppressedError() {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  throw new SuppressedError(new Error("primary"), new Error("suppressed"), "resource cleanup suppressed");
}

function testSuppressedErrorRuntimeThrow() {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  try {
    triggerSuppressedError();
    assertCondition(false, "expected SuppressedError to be thrown");
  } catch (err) {
    assertCondition(err instanceof SuppressedError, "expected SuppressedError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testSuppressedErrorRuntimeThrow();
