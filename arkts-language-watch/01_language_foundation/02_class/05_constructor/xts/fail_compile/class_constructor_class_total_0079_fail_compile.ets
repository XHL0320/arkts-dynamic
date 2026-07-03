/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0079
 * Related Spec: constructor 参数默认值类型不匹配，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: constructor 参数默认值类型不匹配，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
