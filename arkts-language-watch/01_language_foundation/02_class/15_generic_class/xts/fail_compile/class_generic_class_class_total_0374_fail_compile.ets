/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0374
 * Related Spec: Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
