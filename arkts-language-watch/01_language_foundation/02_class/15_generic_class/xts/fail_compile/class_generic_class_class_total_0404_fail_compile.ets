/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0404
 * Related Spec: 类型实参不满足 interface 约束，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 类型实参不满足 interface 约束，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
