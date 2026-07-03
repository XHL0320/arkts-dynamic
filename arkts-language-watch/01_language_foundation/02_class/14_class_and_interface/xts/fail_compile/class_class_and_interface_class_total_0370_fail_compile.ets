/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0370
 * Related Spec: static method 不能满足 instance interface method，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static method 不能满足 instance interface method，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
