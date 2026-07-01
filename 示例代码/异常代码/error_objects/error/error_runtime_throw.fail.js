function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 Error 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerError() {
  throw new Error("user thrown error");
}

function testErrorRuntimeThrow() {
  try {
    triggerError();
    assertCondition(false, "expected Error to be thrown");
  } catch (err) {
    assertCondition(err instanceof Error, "expected Error");
    assertCondition(err instanceof Error, "expected Error");
    assertCondition(err.message === "user thrown error", "unexpected message");
  }
}

testErrorRuntimeThrow();
