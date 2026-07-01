function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 Error 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerError(): void {
  throw new Error("user thrown error");
}

function testErrorRuntimeThrow(): void {
  try {
    triggerError();
    assertCondition(false, "expected Error to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof Error, "expected Error");
    assertCondition(err instanceof Error, "expected Error");
  assertCondition(err.message === "user thrown error", "unexpected message");
  }
}

testErrorRuntimeThrow();
