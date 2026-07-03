/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0339
 * Related Spec: abstract protected method 不能满足 public interface method，checker 报错或边界记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract protected method 不能满足 public interface method，checker 报错或边界记录

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
