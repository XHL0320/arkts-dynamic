/*
 * Feature: Class
 * SubFeature: 17_class_scope
 * CaseType: regression
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9019
 * Related Spec: class self-reference inside method remains stable
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

export function testClassCLASS_SUPP_9019(): void {
  class RegressionCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  let obj: RegressionCase = new RegressionCase()
  assertEqualNumber(obj.getValue(), 1, "high-risk class regression should stay stable")
}

testClassCLASS_SUPP_9019();
