/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0082
 * Related Spec: constructor 标注返回类型，parser/checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: constructor 标注返回类型，parser/checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
