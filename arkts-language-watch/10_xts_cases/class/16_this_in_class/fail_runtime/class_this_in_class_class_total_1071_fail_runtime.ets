/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_runtime
 * Priority: P1
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-1071
 * Related Spec: field initializer 中 this.method 抛异常导致初始化中断
 * Expected: Runtime throws an exception; error message is not asserted.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertThrows(fn: () => void, message: string): void {
  let thrown: boolean = false
  try {
    fn()
  } catch (e) {
    thrown = true
  }
  if (!thrown) {
    throw new Error(message)
  }
}

export function testClassCLASS_TOTAL_1071(): void {
  class FieldThrowCase {
    public value: number = (() => {
      throw new Error("field initializer failed")
    })()
  }
  assertThrows((): void => {
    let obj: FieldThrowCase = new FieldThrowCase()
  }, "field initializer should throw")
}

testClassCLASS_TOTAL_1071();
