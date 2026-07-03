/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0696
 * Related Spec: nested object literal 匹配 nested interface
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

export function testClassCLASS_TOTAL_0696(): void {
  interface ObjectShape {
    value: number
    getValue(): number
  }
  let obj: ObjectShape = {
    value: 12,
    getValue(): number {
      return this.value
    }
  }
  assertEqualNumber(obj.getValue(), 12, "object literal should satisfy interface shape")
}

testClassCLASS_TOTAL_0696();
