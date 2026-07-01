function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 URIError 构造器、name/message、instanceof 和 toString。
// 后续迁移到 XTS/Hypium 时，请替换为项目统一断言 API。

function testURIErrorConstructor(): void {
  const err = new URIError("sample message", { cause: "sample cause" });
  assertCondition(err instanceof URIError, "expected instanceof URIError");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "URIError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(String(err).indexOf("URIError: sample message") >= 0, "unexpected toString");
}

testURIErrorConstructor();
