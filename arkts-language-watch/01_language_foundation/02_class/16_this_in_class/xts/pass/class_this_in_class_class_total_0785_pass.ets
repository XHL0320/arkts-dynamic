/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0785
 * Related Spec: instance method 中读取 this.field
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

export function testClassCLASS_TOTAL_0785(): void {
  class ThisCase {
    public value: number = 10
    public getThis(): ThisCase {
      return this
    }
    public getValue(): number {
      return this.value
    }
  }
  let obj: ThisCase = new ThisCase()
  assertTrue(obj.getThis() === obj, "method should return current this")
  assertEqualNumber(obj.getValue(), 10, "this should access instance field")
}

testClassCLASS_TOTAL_0785();
