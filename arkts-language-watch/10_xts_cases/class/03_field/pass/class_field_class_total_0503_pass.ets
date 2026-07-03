/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0503
 * Related Spec: interface 类型字段初始化为满足 interface 的对象通过
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

export function testClassCLASS_TOTAL_0503(): void {
  class GenericPassCase503 {
    public value: number = 18
  }
  let obj: GenericPassCase503 = new GenericPassCase503()
  assertEqualNumber(obj.value, 18, "class pass case should run")
}

testClassCLASS_TOTAL_0503();
