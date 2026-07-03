/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0123
 * Related Spec: static override 中可见性收窄，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static override 中可见性收窄，checker 报错

class VisibilityFail {
  private value: number = 1
}
let obj: VisibilityFail = new VisibilityFail()
let value: number = obj.value
