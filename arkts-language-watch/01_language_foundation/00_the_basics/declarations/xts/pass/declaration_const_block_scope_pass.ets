/*
 * Case ID: DECL-PASS-001
 * Coverage ID:
 *   - DECL-CONST-010
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify const block scope.. inner block const shadows outer const without changing it.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  const value: number = 1
  {
    const value: number = 2
    assertTrue(value === 2, 'inner const should be visible inside block')
  }
  assertTrue(value === 1, 'outer const should remain unchanged')
}

main()
