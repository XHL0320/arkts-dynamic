/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0013
 * Related Spec: generic class type 实参违反约束，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic class type 实参违反约束，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
