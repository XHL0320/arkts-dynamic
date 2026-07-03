/*
 * Feature: Class
 * SubFeature: 07_inheritance
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0146
 * Related Spec: 普通类继承 abstract class 未实现 abstract method，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 普通类继承 abstract class 未实现 abstract method，checker 报错

class BaseFailCase {
  public getValue(): number {
    return 1
  }
}
class DerivedFailCase extends BaseFailCase {
  public getValue(): string {
    return "wrong"
  }
}
