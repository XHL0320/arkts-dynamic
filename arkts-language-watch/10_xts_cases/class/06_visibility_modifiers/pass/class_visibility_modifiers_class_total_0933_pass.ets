/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0933
 * Related Spec: export class with private field 后类内访问仍通过
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

export function testClassCLASS_TOTAL_0933(): void {
  class VisibilityCase {
    public visible: number = 1
    private hidden: number = 2
    public readHidden(): number {
      return this.hidden
    }
  }
  let obj: VisibilityCase = new VisibilityCase()
  assertEqualNumber(obj.visible + obj.readHidden(), 3, "public API should access private state internally")
}

testClassCLASS_TOTAL_0933();
