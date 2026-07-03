/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0332
 * Related Spec: 子类实现 public abstract method 时可见性收窄为 private，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 子类实现 public abstract method 时可见性收窄为 private，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
