/*
 * Case ID: OPER-PASS-010
 * Coverage ID:
 *   - OP-EQUALITY-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify loose equality number and string.. 1 == "1", 0 == "".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(1 == "1", 'number loosely equals string with same value')
  assertTrue(0 == "", 'zero loosely equals empty string')
  assertTrue(0 == "0", 'zero loosely equals string zero')
  assertTrue(1 != "2", 'one does not equal string two')
}

main()
