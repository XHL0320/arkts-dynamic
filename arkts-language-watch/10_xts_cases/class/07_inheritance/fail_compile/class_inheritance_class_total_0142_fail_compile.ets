/*
 * Feature: Class
 * SubFeature: 07_inheritance
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0142
 * Related Spec: 多继承语法，parser/checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 多继承语法，parser/checker 报错

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
