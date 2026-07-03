/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0173
 * Related Spec: 普通嵌套 function 中使用 super.method()，parser/checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 普通嵌套 function 中使用 super.method()，parser/checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
