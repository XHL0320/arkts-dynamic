function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 SuppressedError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

declare const SuppressedError: {
  new(error: unknown, suppressed: unknown, message?: string): Error;
};

function triggerSuppressedError(): void {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  throw new SuppressedError(new Error("primary"), new Error("suppressed"), "resource cleanup suppressed");
}

function testSuppressedErrorRuntimeThrow(): void {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  try {
    triggerSuppressedError();
    assertCondition(false, "expected SuppressedError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof SuppressedError, "expected SuppressedError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testSuppressedErrorRuntimeThrow();
