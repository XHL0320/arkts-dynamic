/*
 * Case ID: OPER-PASS-003
 * Coverage ID:
 *   - OP-ARITHMETIC-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify string concatenation by plus.. "a" + "b" === "ab".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue("a" + "b" === "ab", 'string concat')
  assertTrue("" + "x" === "x", 'empty string concat')
  assertTrue("x" + 1 === "x1", 'string plus number coerces to string')
  assertTrue(1 + "2" === "12", 'number plus string coerces to string')
}

main()
