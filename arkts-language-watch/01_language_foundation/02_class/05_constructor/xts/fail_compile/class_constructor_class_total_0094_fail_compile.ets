/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0094
 * Related Spec: 派生类 constructor 中 super() 调用多次如可静态识别则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 派生类 constructor 中 super() 调用多次如可静态识别则报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
