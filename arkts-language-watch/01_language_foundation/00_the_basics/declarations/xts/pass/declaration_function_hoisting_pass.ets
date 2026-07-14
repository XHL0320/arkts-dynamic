/*
 * Case ID: DECL-PASS-002
 * Coverage ID:
 *   - DECL-FUNC-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify function declaration hoisting as a declaration binding rule.. function declaration can be called before its declaration.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(add(1, 2) === 3, 'function declaration should be hoisted')
}

function add(a: number, b: number): number {
  return a + b
}

main()
