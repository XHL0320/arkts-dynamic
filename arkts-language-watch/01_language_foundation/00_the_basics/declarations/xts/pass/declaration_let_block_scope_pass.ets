/*
 * Case ID: DECL-PASS-003
 * Coverage ID:
 *   - DECL-LET-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify let block scope and shadowing.. inner block let shadows outer let without changing it.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let value: number = 1
  {
    let value: number = 2
    assertTrue(value === 2, 'inner let should be visible inside block')
  }
  assertTrue(value === 1, 'outer let should remain unchanged')
}

main()
