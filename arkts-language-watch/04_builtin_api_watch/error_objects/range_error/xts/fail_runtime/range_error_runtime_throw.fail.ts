function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 RangeError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerRangeError(): void {
  new Array(-1);
}

function testRangeErrorRuntimeThrow(): void {
  try {
    triggerRangeError();
    assertCondition(false, "expected RangeError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof RangeError, "expected RangeError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testRangeErrorRuntimeThrow();
