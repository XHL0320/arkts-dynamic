/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0008
 * Related Spec: class value 与 instance value 混用，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: class value 与 instance value 混用，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
