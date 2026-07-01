function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 AggregateError 构造器、name/message、instanceof 和 toString。
// 后续迁移到 XTS/Hypium 时，请替换为项目统一断言 API。

function testAggregateErrorConstructor() {
  const err = new AggregateError([new Error("first")], "sample message", { cause: "sample cause" });
  assertCondition(err instanceof AggregateError, "expected instanceof AggregateError");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "AggregateError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(err.errors.length === 1, "unexpected errors length");
  assertCondition(String(err).indexOf("AggregateError: sample message") >= 0, "unexpected toString");
}

testAggregateErrorConstructor();
