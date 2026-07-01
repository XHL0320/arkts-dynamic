function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

// JS 示例：SuppressedError 是较新的 ECMAScript 标准错误对象。
// 当前用例只做能力探测；若 ArkRuntime 不支持，应记录到 excluded_cases_reason。

function testSuppressedErrorConstructor() {
  if (typeof SuppressedError === "undefined") {
    return;
  }
  const err = new SuppressedError(new Error("primary"), new Error("suppressed"), "sample message");
  assertCondition(err instanceof Error, "expected instanceof Error");
  assertCondition(err.name === "SuppressedError", "unexpected name");
  assertCondition(err.message === "sample message", "unexpected message");
  assertCondition(err.error instanceof Error, "unexpected error property");
  assertCondition(err.suppressed instanceof Error, "unexpected suppressed property");
}

testSuppressedErrorConstructor();
