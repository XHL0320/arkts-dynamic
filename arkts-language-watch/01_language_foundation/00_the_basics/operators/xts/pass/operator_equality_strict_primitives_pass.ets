/*
 * Case ID: OPER-PASS-012
 * Coverage ID:
 *   - OP-EQUALITY-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify strict equality of primitives.. 1 === 1, "a" === "a", 1 !== "1".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(1 === 1, 'number strict equal')
  assertTrue(1 !== 2, 'number strict not equal')
  assertTrue("a" === "a", 'string strict equal')
  assertTrue(1 !== "1", 'number and string not strictly equal')
  assertTrue(true === true, 'boolean strict equal')
  assertTrue(null === null, 'null strict equal')
  assertTrue(undefined === undefined, 'undefined strict equal')
  assertTrue(null !== undefined, 'null not strictly equal to undefined')
}

main()
