function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 EvalError 的运行时抛出场景。
// 该文件属于 fail_runtime 示例，不表示 TypeScript 编译期 type error。

function triggerEvalError() {
  throw new EvalError("historical native error");
}

function testEvalErrorRuntimeThrow() {
  try {
    triggerEvalError();
    assertCondition(false, "expected EvalError to be thrown");
  } catch (err) {
    assertCondition(err instanceof EvalError, "expected EvalError");
    assertCondition(err instanceof Error, "expected Error");
    assertCondition(err.message === "historical native error", "unexpected message");
  }
}

testEvalErrorRuntimeThrow();
