/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0430
 * Related Spec: method extraction 未绑定引用如 ArkTS 拦截，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: method extraction 未绑定引用如 ArkTS 拦截，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
