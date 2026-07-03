/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0378
 * Related Spec: T[] 字段写入不兼容元素，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: T[] 字段写入不兼容元素，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
