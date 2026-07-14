/*
 * Case ID: KEYW-PASS-008
 * Coverage ID:
 *   - KW-PROP-003
 *   - KW-RES-007
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify reserved word as object property name.. keywords can be used as object property names using computed access.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = {}
  obj["class"] = 1
  obj["return"] = 2
  obj["function"] = 3
  assertTrue(obj["class"] === 1, 'keyword as computed property name: class')
  assertTrue(obj["return"] === 2, 'keyword as computed property name: return')
  assertTrue(obj["function"] === 3, 'keyword as computed property name: function')
}

main()
