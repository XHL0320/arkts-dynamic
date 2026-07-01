function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 URIError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerURIError() {
  decodeURIComponent("%");
}

function testURIErrorRuntimeThrow() {
  try {
    triggerURIError();
    assertCondition(false, "expected URIError to be thrown");
  } catch (err) {
    assertCondition(err instanceof URIError, "expected URIError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testURIErrorRuntimeThrow();
