function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：验证 TypeError 构造器、name/message、instanceof 和 toString。
// 后续迁移到 XTS/Hypium 时，请替换为项目统一断言 API。

function testTypeErrorConstructor() {
  const err = new TypeError("sample message", { cause: "sample cause" });
  assertCondition(err instanceof TypeError, "expected instanceof TypeError");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "TypeError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(String(err).indexOf("TypeError: sample message") >= 0, "unexpected toString");
}

testTypeErrorConstructor();
