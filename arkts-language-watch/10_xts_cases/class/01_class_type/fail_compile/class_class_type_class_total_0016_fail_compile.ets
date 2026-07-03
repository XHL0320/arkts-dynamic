/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0016
 * Related Spec: instance type 不能访问 static method，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: instance type 不能访问 static method，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
