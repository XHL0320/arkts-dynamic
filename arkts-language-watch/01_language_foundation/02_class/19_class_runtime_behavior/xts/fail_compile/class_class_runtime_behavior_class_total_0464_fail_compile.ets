/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0464
 * Related Spec: Function.call/apply 使用 class constructor，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: Function.call/apply 使用 class constructor，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
