/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0411
 * Related Spec: callback 函数类型 this 参数不兼容，checker 报错或边界记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: callback 函数类型 this 参数不兼容，checker 报错或边界记录

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
