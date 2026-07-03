/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0358
 * Related Spec: interface extends interface 后 class 缺少 base interface 成员，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: interface extends interface 后 class 缺少 base interface 成员，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
