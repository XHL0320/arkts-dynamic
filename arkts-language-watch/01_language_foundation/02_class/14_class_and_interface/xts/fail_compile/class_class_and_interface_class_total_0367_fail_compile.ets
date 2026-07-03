/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0367
 * Related Spec: protected/private inherited 成员不能满足 public interface 成员，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: protected/private inherited 成员不能满足 public interface 成员，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
