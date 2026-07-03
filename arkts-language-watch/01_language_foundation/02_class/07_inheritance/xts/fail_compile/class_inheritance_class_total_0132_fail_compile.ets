/*
 * Feature: Class
 * SubFeature: 07_inheritance
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0132
 * Related Spec: extends 非 class / 非 constructor，如静态可识别则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: extends 非 class / 非 constructor，如静态可识别则报错

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
