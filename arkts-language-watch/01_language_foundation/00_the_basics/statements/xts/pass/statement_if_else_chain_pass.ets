/*
 * Case ID: STMT-PASS-014
 * Coverage ID:
 *   - STMT-IF-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify if / else if / else chain matching.. only the first matching branch executes.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function classify(x: number): string {
  if (x < 0) {
    return "negative"
  } else if (x === 0) {
    return "zero"
  } else if (x < 10) {
    return "small"
  } else {
    return "large"
  }
}

function main(): void {
  assertTrue(classify(-5) === "negative", 'negative branch')
  assertTrue(classify(0) === "zero", 'zero branch')
  assertTrue(classify(5) === "small", 'small branch')
  assertTrue(classify(100) === "large", 'large branch')
}

main()
