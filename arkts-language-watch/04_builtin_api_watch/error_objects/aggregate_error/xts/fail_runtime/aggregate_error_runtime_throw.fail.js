function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 AggregateError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerAggregateError() {
  throw new AggregateError([new Error("first"), new TypeError("second")], "all failed");
}

function testAggregateErrorRuntimeThrow() {
  try {
    triggerAggregateError();
    assertCondition(false, "expected AggregateError to be thrown");
  } catch (err) {
    assertCondition(err instanceof AggregateError, "expected AggregateError");
    assertCondition(err instanceof Error, "expected Error");
    assertCondition(err.message === "all failed", "unexpected message");
  }
}

testAggregateErrorRuntimeThrow();
