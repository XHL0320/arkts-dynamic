/*
 * Case ID: OPER-PASS-006
 * Coverage ID:
 *   - OP-CONDITIONAL-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify conditional operator false branch only.. false ? "yes" : "no" === "no", true branch not evaluated.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: number = 0
  let result: string = false ? (() => { sideEffect = 1; return "yes" })() : "no"
  assertTrue(result === "no", 'false branch selected')
  assertTrue(sideEffect === 0, 'true branch not evaluated')
  assertTrue((1 < 0 ? 100 : 200) === 200, 'conditional with false comparison')
}

main()
