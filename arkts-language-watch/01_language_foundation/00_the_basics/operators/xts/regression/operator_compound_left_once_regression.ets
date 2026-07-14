/*
 * Case ID: OPER-REGR-001
 * Coverage ID:
 *   - OP-COMPOUND-ASSIGNMENT-006
 * Feature: language_basics
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify compound assignment evaluates left-hand reference only once.. obj[i++] += 1 should only increment i once per evaluation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let arr: number[] = [10, 20, 30]
  let i: number = 0
  arr[i++] += 5
  assertTrue(i === 1, 'index should be incremented exactly once')
  assertTrue(arr[0] === 15, 'first element should be 10 + 5')
  assertTrue(arr[1] === 20, 'second element unchanged')

  let obj: Record<string, number> = { val: 100 }
  obj.val += 50
  assertTrue(obj.val === 150, 'compound assignment on object property')
}

main()
