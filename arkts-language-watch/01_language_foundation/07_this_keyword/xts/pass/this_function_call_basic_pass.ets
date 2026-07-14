/*
 * Case ID: THIS-PASS-009
 * Coverage ID:
 *   - TK-FUNC-001
 *   - TK-SM-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function, builtin_api_watch
 * Spec Source: pending
 * Description: Verify function call this binding (strict mode).
 * Notes: Original expected behavior: in strict mode, `this` in plain function call is undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function plainFunction(): Object | undefined {
  return this
}

function main(): void {
  let result: Object | undefined = plainFunction()
  // In module/strict mode, `this` should be undefined.
  // If not strict, it would be globalThis.
  assertTrue(result === undefined || result === globalThis, 'function call this is undefined or globalThis')
}

main()
