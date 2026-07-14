/*
 * Case ID: GEN-PASS-006
 * Coverage ID:
 *   - GEN-FUNC-003
 *   - GEN-INFER-001
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify generic function type inference.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function wrap<T>(value: T): T[] {
  return [value]
}

function main(): void {
  let arr: number[] = wrap(99)
  assertTrue(arr.length === 1, 'inferred array length')
  assertTrue(arr[0] === 99, 'inferred array content')
  let strArr: string[] = wrap("test")
  assertTrue(strArr[0] === "test", 'inferred string array')
}

main()
