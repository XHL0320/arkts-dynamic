/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0060
 * Related Spec: 参数个数过多，checker 报错或按 ArkTS 规则记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 参数个数过多，checker 报错或按 ArkTS 规则记录

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
