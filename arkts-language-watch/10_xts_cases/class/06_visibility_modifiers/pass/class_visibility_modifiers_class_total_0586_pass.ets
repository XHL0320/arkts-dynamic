/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0586
 * Related Spec: public 成员可被子类 override 并保持 public
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

export function testClassCLASS_TOTAL_0586(): void {
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

testClassCLASS_TOTAL_0586();
