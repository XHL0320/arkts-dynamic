/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0467
 * Related Spec: class constructor 普通调用 A()，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: class constructor 普通调用 A()，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
