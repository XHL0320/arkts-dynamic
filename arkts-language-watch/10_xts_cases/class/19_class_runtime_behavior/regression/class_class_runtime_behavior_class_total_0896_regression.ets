/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: regression
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0896
 * Related Spec: 回归：method extraction this 丢失导致 runtime error
 * Expected: High-risk regression scenario remains stable.
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

export function testClassCLASS_TOTAL_0896(): void {
  class RegressionCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  let obj: RegressionCase = new RegressionCase()
  assertEqualNumber(obj.getValue(), 1, "high-risk class regression should stay stable")
}

testClassCLASS_TOTAL_0896();
