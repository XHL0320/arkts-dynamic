/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0023
 * Related Spec: 两个不兼容 class instance 互赋，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 两个不兼容 class instance 互赋，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
