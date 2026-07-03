/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: fail_runtime
 * Priority: P1
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-1081
 * Related Spec: super.method 不存在 TypeError
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

export function testClassCLASS_TOTAL_1081(): void {
  class ConstructorThrowCase {
    constructor() {
      throw new Error("constructor failed")
    }
  }
  assertThrows((): void => {
    let obj: ConstructorThrowCase = new ConstructorThrowCase()
  }, "constructor should throw")
}

testClassCLASS_TOTAL_1081();
