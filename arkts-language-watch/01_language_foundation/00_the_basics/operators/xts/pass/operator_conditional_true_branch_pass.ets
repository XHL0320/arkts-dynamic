/*
 * Case ID: OPER-PASS-007
 * Coverage ID:
 *   - OP-CONDITIONAL-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify conditional operator true branch only.. true ? "yes" : "no" === "yes", false branch not evaluated.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: number = 0
  let result: string = true ? "yes" : (() => { sideEffect = 1; return "no" })()
  assertTrue(result === "yes", 'true branch selected')
  assertTrue(sideEffect === 0, 'false branch not evaluated')
  assertTrue((1 > 0 ? 100 : 200) === 100, 'conditional with comparison condition')
}

main()
