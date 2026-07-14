/*
 * Case ID: THIS-PASS-002
 * Coverage ID:
 *   - TK-ARR-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Description: Verify arrow function lexical this.
 * Notes: Original expected behavior: arrow captures outer this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ArrowTest {
  value: number = 99
  getArrow(): () => number {
    return (): number => this.value
  }
}

function main(): void {
  let test: ArrowTest = new ArrowTest()
  let fn: () => number = test.getArrow()
  assertTrue(fn() === 99, 'arrow captures outer this')
}

main()
