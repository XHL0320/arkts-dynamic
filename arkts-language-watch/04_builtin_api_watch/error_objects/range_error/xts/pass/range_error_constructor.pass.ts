function assertCondition(condition: boolean, message: string): void {
  if (!condition) {
    throw new Error(message);
  }
}

// TS 示例：验证 RangeError 构造器、name/message、instanceof 和 toString。
// 后续迁移到 XTS/Hypium 时，请替换为项目统一断言 API。

function testRangeErrorConstructor(): void {
  const err = new RangeError("sample message", { cause: "sample cause" });
  assertCondition(err instanceof RangeError, "expected instanceof RangeError");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "RangeError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(String(err).indexOf("RangeError: sample message") >= 0, "unexpected toString");
}

testRangeErrorConstructor();
