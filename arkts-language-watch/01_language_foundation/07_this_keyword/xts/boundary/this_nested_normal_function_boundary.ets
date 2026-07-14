/*
 * Case ID: THIS-BOUND-010
 * Coverage ID:
 *   - TK-NST-001
 *   - TK-NST-003
 *   - TK-FUNC-005
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Boundary Reason: inner function has its own this, may lose outer this.
 * Description: Verify nested normal function this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: nested normal function this boundary. Boundary reason: inner function has its own this, may lose outer this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Outer {
  value: number = 42
  outerMethod(): number {
    function inner(): Object | undefined { return this }
    let innerThis: Object | undefined = inner()
    // inner's this is NOT outer's this (it's undefined or globalThis)
    assertTrue(innerThis === undefined || innerThis === globalThis, 'inner function this differs from outer')
    return this.value
  }
}

function main(): void {
  let o: Outer = new Outer()
  assertTrue(o.outerMethod() === 42, 'outer this preserved, inner this differs')
}

main()
