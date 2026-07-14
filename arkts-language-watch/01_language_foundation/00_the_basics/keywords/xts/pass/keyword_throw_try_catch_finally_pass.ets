/*
 * Case ID: KEYW-PASS-010
 * Coverage ID:
 *   - KW-STMT-006
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify throw/try/catch/finally keywords in valid positions.. throw/try/catch/finally keywords work as exception handling.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let caught: boolean = false
  let finallyRan: boolean = false
  try {
    throw new Error("test")
  } catch (e) {
    caught = true
  } finally {
    finallyRan = true
  }
  assertTrue(caught, 'catch keyword works')
  assertTrue(finallyRan, 'finally keyword works')
}

main()
