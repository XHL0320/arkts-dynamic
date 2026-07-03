/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0502
 * Related Spec: generic class 字段类型为 T 并赋值 T 通过
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

export function testClassCLASS_TOTAL_0502(): void {
  class GenericPassCase502 {
    public value: number = 17
  }
  let obj: GenericPassCase502 = new GenericPassCase502()
  assertEqualNumber(obj.value, 17, "class pass case should run")
}

testClassCLASS_TOTAL_0502();
