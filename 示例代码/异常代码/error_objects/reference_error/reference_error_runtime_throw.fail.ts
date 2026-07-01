function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 ReferenceError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerReferenceError(): void {
  eval("missingRuntimeBinding");
}

function testReferenceErrorRuntimeThrow(): void {
  try {
    triggerReferenceError();
    assertCondition(false, "expected ReferenceError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof ReferenceError, "expected ReferenceError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testReferenceErrorRuntimeThrow();
