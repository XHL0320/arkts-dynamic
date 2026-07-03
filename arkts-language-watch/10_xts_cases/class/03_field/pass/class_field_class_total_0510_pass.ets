/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0510
 * Related Spec: 单个 number 字段带类型注解和初始化值通过
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

export function testClassCLASS_TOTAL_0510(): void {
  class GenericPassCase510 {
    public value: number = 25
  }
  let obj: GenericPassCase510 = new GenericPassCase510()
  assertEqualNumber(obj.value, 25, "class pass case should run")
}

testClassCLASS_TOTAL_0510();
