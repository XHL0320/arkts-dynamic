function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 ReferenceError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerReferenceError() {
  eval("missingRuntimeBinding");
}

function testReferenceErrorRuntimeThrow() {
  try {
    triggerReferenceError();
    assertCondition(false, "expected ReferenceError to be thrown");
  } catch (err) {
    assertCondition(err instanceof ReferenceError, "expected ReferenceError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testReferenceErrorRuntimeThrow();
