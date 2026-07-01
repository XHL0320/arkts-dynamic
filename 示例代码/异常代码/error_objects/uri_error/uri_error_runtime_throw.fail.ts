function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 URIError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerURIError(): void {
  decodeURIComponent("%");
}

function testURIErrorRuntimeThrow(): void {
  try {
    triggerURIError();
    assertCondition(false, "expected URIError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof URIError, "expected URIError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testURIErrorRuntimeThrow();
