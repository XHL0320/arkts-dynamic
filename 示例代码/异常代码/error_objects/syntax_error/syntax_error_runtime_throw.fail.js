function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 SyntaxError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerSyntaxError() {
  JSON.parse("{ invalid json }");
}

function testSyntaxErrorRuntimeThrow() {
  try {
    triggerSyntaxError();
    assertCondition(false, "expected SyntaxError to be thrown");
  } catch (err) {
    assertCondition(err instanceof SyntaxError, "expected SyntaxError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testSyntaxErrorRuntimeThrow();
