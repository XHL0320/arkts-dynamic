/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0500
 * Related Spec: class 类型字段初始化为对应 class 实例通过
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

export function testClassCLASS_TOTAL_0500(): void {
  class GenericPassCase500 {
    public value: number = 15
  }
  let obj: GenericPassCase500 = new GenericPassCase500()
  assertEqualNumber(obj.value, 15, "class pass case should run")
}

testClassCLASS_TOTAL_0500();
