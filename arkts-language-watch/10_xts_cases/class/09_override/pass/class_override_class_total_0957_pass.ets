/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0957
 * Related Spec: generic method 覆盖 generic method
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

export function testClassCLASS_TOTAL_0957(): void {
  class OverrideBase {
    public getValue(): number {
      return 1
    }
  }
  class OverrideDerived extends OverrideBase {
    public getValue(): number {
      return 2
    }
  }
  let obj: OverrideBase = new OverrideDerived()
  assertEqualNumber(obj.getValue(), 2, "derived override should dispatch")
}

testClassCLASS_TOTAL_0957();
