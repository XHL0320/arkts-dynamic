/*
 * Feature: Class
 * SubFeature: 07_inheritance
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0150
 * Related Spec: 派生类重复声明不兼容继承关系，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 派生类重复声明不兼容继承关系，checker 报错

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
