function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 AggregateError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerAggregateError(): void {
  throw new AggregateError([new Error("first"), new TypeError("second")], "all failed");
}

function testAggregateErrorRuntimeThrow(): void {
  try {
    triggerAggregateError();
    assertCondition(false, "expected AggregateError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof AggregateError, "expected AggregateError");
    assertCondition(err instanceof Error, "expected Error");
  assertCondition(err.message === "all failed", "unexpected message");
  }
}

testAggregateErrorRuntimeThrow();
