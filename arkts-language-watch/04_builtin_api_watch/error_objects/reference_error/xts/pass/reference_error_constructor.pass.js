function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 ReferenceError 构造器、name/message、instanceof 和 toString。
// 后续迁移到 XTS/Hypium 时，请替换为项目统一断言 API。

function testReferenceErrorConstructor() {
  const err = new ReferenceError("sample message", { cause: "sample cause" });
  assertCondition(err instanceof ReferenceError, "expected instanceof ReferenceError");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "ReferenceError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(String(err).indexOf("ReferenceError: sample message") >= 0, "unexpected toString");
}

testReferenceErrorConstructor();
