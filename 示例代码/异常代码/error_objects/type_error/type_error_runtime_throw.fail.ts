function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 TypeError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerTypeError(): void {
  const value: unknown = 1;
  (value as () => void)();
}

function testTypeErrorRuntimeThrow(): void {
  try {
    triggerTypeError();
    assertCondition(false, "expected TypeError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof TypeError, "expected TypeError");
    assertCondition(err instanceof Error, "expected Error");
  }
}

testTypeErrorRuntimeThrow();
