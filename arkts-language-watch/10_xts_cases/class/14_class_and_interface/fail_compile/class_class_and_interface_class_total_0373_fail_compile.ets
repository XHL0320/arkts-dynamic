/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0373
 * Related Spec: 跨文件 interface 成员新增后 class implements 缺少成员，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 跨文件 interface 成员新增后 class implements 缺少成员，checker 报错

interface InterfaceFailShape {
  value: number
  getValue(): number
}
class InterfaceFailCase implements InterfaceFailShape {
  public value: string = "wrong"
}
