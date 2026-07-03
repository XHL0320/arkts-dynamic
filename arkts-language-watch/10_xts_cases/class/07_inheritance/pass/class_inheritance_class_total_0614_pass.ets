/*
 * Feature: Class
 * SubFeature: 07_inheritance
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0614
 * Related Spec: 空派生类继承通过
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

export function testClassCLASS_TOTAL_0614(): void {
  class BaseCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  class DerivedCase extends BaseCase {
    public extra: number = 2
  }
  let obj: DerivedCase = new DerivedCase()
  assertTrue(obj instanceof BaseCase, "derived should be instance of base")
  assertEqualNumber(obj.getValue() + obj.extra, 3, "derived should inherit base members")
}

testClassCLASS_TOTAL_0614();
