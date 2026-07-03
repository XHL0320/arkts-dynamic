/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0371
 * Related Spec: 两个 interface 同名 method 签名冲突，class 同时 implements 时报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 两个 interface 同名 method 签名冲突，class 同时 implements 时报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
