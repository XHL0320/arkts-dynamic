/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0398
 * Related Spec: static value:T 如 ArkTS 禁止，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static value:T 如 ArkTS 禁止，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
