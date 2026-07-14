/*
 * Case ID: KEYW-PASS-013
 * Coverage ID:
 *   - KW-DECL-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify var keyword as declaration keyword.. var keyword can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  var x: number = 10
  assertTrue(x === 10, 'var declaration keyword works')
  var y: string = "hello"
  assertTrue(y === "hello", 'var string declaration')
}

main()
