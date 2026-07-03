/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0458
 * Related Spec: 字段遮蔽类型不一致，如 ArkTS 禁止则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 字段遮蔽类型不一致，如 ArkTS 禁止则报错

class InitFailCase {
  public value: number = "wrong"
}
