/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0917
 * Related Spec: 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则 checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则 checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
