/*
 * Case ID: OPER-PASS-016
 * Coverage ID:
 *   - OP-LOGICAL-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify logical NOT truthy and falsy values.. !false === true, !0 === true, !"" === true, !null === true, !undefined === true, !NaN === true.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(!false === true, 'not false is true')
  assertTrue(!0 === true, 'not zero is true')
  assertTrue(!"" === true, 'not empty string is true')
  assertTrue(!null === true, 'not null is true')
  assertTrue(!undefined === true, 'not undefined is true')
  let nan: number = NaN
  assertTrue(!nan === true, 'not NaN is true')
  assertTrue(!1 === false, 'not one is false')
  assertTrue(!"a" === false, 'not non-empty string is false')
  assertTrue(![] === false, 'not empty array is false (truthy)')
  assertTrue(!{} === false, 'not empty object is false (truthy)')
}

main()
