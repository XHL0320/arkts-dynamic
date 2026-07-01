function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 SyntaxError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerSyntaxError(): void {
  JSON.parse("{ invalid json }");
}

function testSyntaxErrorRuntimeThrow(): void {
  try {
    triggerSyntaxError();
    assertCondition(false, "expected SyntaxError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof SyntaxError, "expected SyntaxError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testSyntaxErrorRuntimeThrow();
