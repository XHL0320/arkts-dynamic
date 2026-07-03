/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0020
 * Related Spec: object literal 缺少 class public field 时赋给 class type，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: object literal 缺少 class public field 时赋给 class type，checker 报错

class BaseTypeFail {
  public value: number = 1
}
class DerivedTypeFail extends BaseTypeFail {
  public extra: number = 2
}
let derived: DerivedTypeFail = new BaseTypeFail()
