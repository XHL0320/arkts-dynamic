/*
 * Case ID: DECL-PASS-006
 * Coverage ID:
 *   - DECL-VAR-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify var declaration hoisting.. reading a var binding before its declaration returns undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(value === undefined, 'var binding should be undefined before assignment')
  var value: number = 1
  assertTrue(value === 1, 'var binding should hold assigned value')
}

main()
