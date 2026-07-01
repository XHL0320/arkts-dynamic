function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 TypeError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerTypeError() {
  const value = 1;
  value();
}

function testTypeErrorRuntimeThrow() {
  try {
    triggerTypeError();
    assertCondition(false, "expected TypeError to be thrown");
  } catch (err) {
    assertCondition(err instanceof TypeError, "expected TypeError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testTypeErrorRuntimeThrow();
