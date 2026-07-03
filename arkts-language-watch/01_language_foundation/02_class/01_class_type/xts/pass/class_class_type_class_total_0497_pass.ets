/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0497
 * Related Spec: 函数返回值类型为 class instance type，返回 new A() 通过
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

export function testClassCLASS_TOTAL_0497(): void {
  class BaseTypeCase {
    public value: number = 1
  }
  class DerivedTypeCase extends BaseTypeCase {
    public extra: number = 2
  }
  let baseRef: BaseTypeCase = new DerivedTypeCase()
  assertEqualNumber(baseRef.value, 1, "derived instance should be assignable to base type")
}

testClassCLASS_TOTAL_0497();
