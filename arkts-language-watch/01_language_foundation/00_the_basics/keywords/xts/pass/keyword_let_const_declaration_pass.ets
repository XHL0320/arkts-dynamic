/*
 * Case ID: KEYW-PASS-007
 * Coverage ID:
 *   - KW-DECL-002
 *   - KW-DECL-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify let and const keywords as declaration keywords.. let/const keywords can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let a: number = 1
  const b: number = 2
  assertTrue(a === 1, 'let declaration keyword works')
  assertTrue(b === 2, 'const declaration keyword works')
  a = 3
  assertTrue(a === 3, 'let can be reassigned')
}

main()
