/*
 * Case ID: OPER-PASS-019
 * Coverage ID:
 *   - OP-NULLISH-COALESCING-003
 *   - OP-NULLISH-COALESCING-004
 *   - OP-NULLISH-COALESCING-005
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify nullish coalescing preserves falsy values (difference from ||).. 0 ?? "x" === 0, "" ?? "x" === "", false ?? "x" === false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let zero: number = 0
  let emptyStr: string = ""
  let falsy: boolean = false
  assertTrue((zero ?? 99) === 0, '?? preserves 0 unlike ||')
  assertTrue((emptyStr ?? "fallback") === "", '?? preserves empty string unlike ||')
  assertTrue((falsy ?? true) === false, '?? preserves false unlike ||')
  assertTrue((zero || 99) === 99, '|| replaces 0')
  assertTrue((falsy || true) === true, '|| replaces false')
}

main()
