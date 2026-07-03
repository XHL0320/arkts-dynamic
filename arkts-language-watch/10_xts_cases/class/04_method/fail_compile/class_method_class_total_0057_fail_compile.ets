/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0057
 * Related Spec: static method 通过实例访问，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static method 通过实例访问，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
