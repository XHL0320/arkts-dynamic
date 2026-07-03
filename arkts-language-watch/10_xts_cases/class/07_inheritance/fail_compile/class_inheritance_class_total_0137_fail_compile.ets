/*
 * Feature: Class
 * SubFeature: 07_inheritance
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0137
 * Related Spec: super() 参数个数不足，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: super() 参数个数不足，checker 报错

class BaseFailCase {
  public getValue(): number {
    return 1
  }
}
class DerivedFailCase extends BaseFailCase {
  public getValue(): string {
    return "wrong"
  }
}
