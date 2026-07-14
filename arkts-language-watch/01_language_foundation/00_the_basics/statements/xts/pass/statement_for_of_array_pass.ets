/*
 * Case ID: STMT-PASS-013
 * Coverage ID:
 *   - STMT-FOROF-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify for-of iterates array elements.. for-of iterates over array values (not indices).
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let arr: number[] = [10, 20, 30]
  let sum: number = 0
  for (let item of arr) {
    sum += item
  }
  assertTrue(sum === 60, 'sum should be 10+20+30=60')
}

main()
