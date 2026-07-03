/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: fail_runtime
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0866
 * Related Spec: derived field initializer 抛异常后 constructor 剩余不执行
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

export function testClassCLASS_TOTAL_0866(): void {
  class FieldThrowCase {
    public value: number = (() => {
      throw new Error("field initializer failed")
    })()
  }
  assertThrows((): void => {
    let obj: FieldThrowCase = new FieldThrowCase()
  }, "field initializer should throw")
}

testClassCLASS_TOTAL_0866();
