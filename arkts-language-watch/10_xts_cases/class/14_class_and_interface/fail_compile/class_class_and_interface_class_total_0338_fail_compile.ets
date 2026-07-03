/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0338
 * Related Spec: abstract class implements interface 但 concrete 子类未最终实现，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract class implements interface 但 concrete 子类未最终实现，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
