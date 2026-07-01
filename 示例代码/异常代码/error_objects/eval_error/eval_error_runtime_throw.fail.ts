function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 EvalError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript/ArkTS 编译期 type error。

function triggerEvalError(): void {
  throw new EvalError("historical native error");
}

function testEvalErrorRuntimeThrow(): void {
  try {
    triggerEvalError();
    assertCondition(false, "expected EvalError to be thrown");
  } catch (e) {
    const err = e as Error;
    assertCondition(err instanceof EvalError, "expected EvalError");
    assertCondition(err instanceof Error, "expected Error");
  assertCondition(err.message === "historical native error", "unexpected message");
  }
}

testEvalErrorRuntimeThrow();
