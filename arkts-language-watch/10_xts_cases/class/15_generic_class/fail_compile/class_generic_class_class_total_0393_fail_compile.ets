/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0393
 * Related Spec: method 类型参数与 class 类型参数同名，如 ArkTS 禁止则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: method 类型参数与 class 类型参数同名，如 ArkTS 禁止则报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
