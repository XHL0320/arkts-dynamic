/*
 * Case ID: STMT-PASS-007
 * Coverage ID:
 *   - STMT-EXPR-001
 *   - STMT-EXPR-002
 *   - STMT-EXPR-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify expression statement executes and discards result.. assignment and call expressions work as statements.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function sideEffect(): number { return 42 }

function main(): void {
  let x: number = 0
  x = 10
  assertTrue(x === 10, 'assignment expression statement')
  sideEffect()
  x++
  assertTrue(x === 11, 'increment expression statement')
}

main()
