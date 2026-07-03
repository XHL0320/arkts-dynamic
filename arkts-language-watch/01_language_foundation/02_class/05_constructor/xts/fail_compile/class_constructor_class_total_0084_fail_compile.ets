/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0084
 * Related Spec: new 调用参数个数不足，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: new 调用参数个数不足，checker 报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
