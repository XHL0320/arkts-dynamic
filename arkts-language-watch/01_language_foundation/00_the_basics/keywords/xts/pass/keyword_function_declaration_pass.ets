/*
 * Case ID: KEYW-PASS-004
 * Coverage ID:
 *   - KW-DECL-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify function keyword as declaration keyword.. function keyword can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function myFunc(): number { return 42 }

function main(): void {
  assertTrue(myFunc() === 42, 'function declaration keyword works')
  let result: number = myFunc()
  assertTrue(result === 42, 'function return value')
}

main()
