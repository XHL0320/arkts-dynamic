/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0051
 * Related Spec: overload 调用无匹配签名，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: overload 调用无匹配签名，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
