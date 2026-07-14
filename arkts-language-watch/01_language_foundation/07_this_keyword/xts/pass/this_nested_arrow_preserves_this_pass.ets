/*
 * Case ID: THIS-PASS-013
 * Coverage ID:
 *   - TK-ARR-002
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Description: Verify nested arrow preserves this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: nested arrow preserves this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class NestedArrow {
  value: number = 77
  outer(): () => () => number {
    return (): (() => number) => {
      return (): number => this.value
    }
  }
}

function main(): void {
  let test: NestedArrow = new NestedArrow()
  let inner: () => number = test.outer()()
  assertTrue(inner() === 77, 'nested arrow preserves this')
}

main()
