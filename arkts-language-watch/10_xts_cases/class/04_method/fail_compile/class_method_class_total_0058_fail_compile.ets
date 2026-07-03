/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0058
 * Related Spec: string 参数传入 boolean，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: string 参数传入 boolean，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
