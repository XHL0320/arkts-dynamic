/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0539
 * Related Spec: 返回 array 方法返回数组通过
 * Expected: Class scenario compiles and runs with focused assertions.
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

export function testClassCLASS_TOTAL_0539(): void {
  class MethodCase {
    private value: number = 1
    public getValue(delta: number): number {
      return this.value + delta
    }
  }
  let obj: MethodCase = new MethodCase()
  assertEqualNumber(obj.getValue(2), 3, "method should return typed value")
}

testClassCLASS_TOTAL_0539();
