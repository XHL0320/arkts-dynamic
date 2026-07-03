/*
 * Feature: Class
 * SubFeature: 15_generic_class
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0763
 * Related Spec: 类型参数用于 nullable / union 类型，如 ArkTS 支持
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

export function testClassCLASS_TOTAL_0763(): void {
  class Box<T> {
    public value: T
    constructor(value: T) {
      this.value = value
    }
    public getValue(): T {
      return this.value
    }
  }
  let box: Box<number> = new Box<number>(9)
  assertEqualNumber(box.getValue(), 9, "generic class should preserve typed value")
}

testClassCLASS_TOTAL_0763();
