/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0062
 * Related Spec: 未声明方法调用，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 未声明方法调用，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
