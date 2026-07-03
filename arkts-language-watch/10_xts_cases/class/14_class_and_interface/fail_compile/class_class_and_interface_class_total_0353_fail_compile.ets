/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0353
 * Related Spec: generic method in interface 由 class generic method 实现时约束不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic method in interface 由 class generic method 实现时约束不兼容，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
