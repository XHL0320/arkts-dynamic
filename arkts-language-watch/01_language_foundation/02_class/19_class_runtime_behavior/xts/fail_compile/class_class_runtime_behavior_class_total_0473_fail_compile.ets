/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0473
 * Related Spec: prototype 动态修改 A.prototype.method = fn，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: prototype 动态修改 A.prototype.method = fn，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
