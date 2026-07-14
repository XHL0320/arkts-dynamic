/*
 * Case ID: STMT-PASS-001
 * Coverage ID:
 *   - STMT-BLOCK-001
 *   - STMT-BLOCK-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify block statement basic execution and block scope.. let/const inside block do not leak outside.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let outer: number = 1
  {
    let inner: number = 2
    assertTrue(inner === 2, 'inner let visible inside block')
  }
  assertTrue(outer === 1, 'outer value unchanged')
}

main()
