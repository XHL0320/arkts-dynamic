/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0078
 * Related Spec: constructor 参数类型省略如 ArkTS 不允许则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: constructor 参数类型省略如 ArkTS 不允许则报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
