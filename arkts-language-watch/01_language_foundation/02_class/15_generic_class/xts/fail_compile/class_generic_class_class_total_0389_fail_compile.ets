/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0389
 * Related Spec: generic override 参数类型不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic override 参数类型不兼容，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
