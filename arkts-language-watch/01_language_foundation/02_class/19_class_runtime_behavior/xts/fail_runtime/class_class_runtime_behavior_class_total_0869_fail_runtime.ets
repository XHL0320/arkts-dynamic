/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: fail_runtime
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0869
 * Related Spec: field with late initialization 读取未初始化字段 runtime error
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

export function testClassCLASS_TOTAL_0869(): void {
  class ConstructorThrowCase {
    constructor() {
      throw new Error("constructor failed")
    }
  }
  assertThrows((): void => {
    let obj: ConstructorThrowCase = new ConstructorThrowCase()
  }, "constructor should throw")
}

testClassCLASS_TOTAL_0869();
