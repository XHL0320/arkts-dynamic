function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 EvalError 构造器、name/message、instanceof 和 toString。
// 后续迁移到 XTS/Hypium 时，请替换为项目统一断言 API。

function testEvalErrorConstructor() {
  const err = new EvalError("sample message", { cause: "sample cause" });
  assertCondition(err instanceof EvalError, "expected instanceof EvalError");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "EvalError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(String(err).indexOf("EvalError: sample message") >= 0, "unexpected toString");
}

testEvalErrorConstructor();
