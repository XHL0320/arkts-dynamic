/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0093
 * Related Spec: super() 参数类型不匹配，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: super() 参数类型不匹配，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
