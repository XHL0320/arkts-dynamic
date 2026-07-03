/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0170
 * Related Spec: 子类调用 super.abstractMethod() 但基类只有 abstract 声明无实现，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 子类调用 super.abstractMethod() 但基类只有 abstract 声明无实现，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
