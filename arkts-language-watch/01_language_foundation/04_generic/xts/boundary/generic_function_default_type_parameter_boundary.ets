/*
 * Case ID: GEN-BOUND-006
 * Coverage ID:
 *   - GEN-DEF-001
 *   - GEN-DEF-002
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic default type parameter declaration and usage boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function createArray<T = string>(value: T): T[] {
  return [value]
}

function main(): void {
  let strArr: string[] = createArray("default")
  assertTrue(strArr[0] === "default", 'default type parameter inferred as string')
  let numArr: number[] = createArray<number>(42)
  assertTrue(numArr[0] === 42, 'explicit type overrides default')
}

main()
