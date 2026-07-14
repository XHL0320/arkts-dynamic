/*
 * Case ID: GEN-PASS-001
 * Coverage ID:
 *   - GEN-ARR-001
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify Array<T> generic type basic usage.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let arr: Array<number> = [1, 2, 3]
  assertTrue(arr.length === 3, 'Array<number> length')
  assertTrue(arr[0] === 1, 'Array<number> first element')
  let strs: Array<string> = ["a", "b"]
  assertTrue(strs.length === 2, 'Array<string> length')
}

main()
