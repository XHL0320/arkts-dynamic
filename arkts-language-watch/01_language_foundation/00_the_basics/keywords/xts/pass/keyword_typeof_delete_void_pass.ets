/*
 * Case ID: KEYW-PASS-012
 * Coverage ID:
 *   - KW-OP-001
 *   - KW-OP-002
 *   - KW-OP-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify typeof/void/delete keywords as expression operators.. typeof/void/delete keywords work in expression position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(typeof 42 === "number", 'typeof keyword works')
  assertTrue(void 0 === undefined, 'void keyword works')
  let obj: Record<string, number> = { x: 1 }
  assertTrue(delete obj.x === true, 'delete keyword works')
  assertTrue(!("x" in obj), 'property deleted by delete keyword')
}

main()
