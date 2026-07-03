/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0906
 * Related Spec: 非派生类实例方法中使用 super.method()，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 非派生类实例方法中使用 super.method()，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
