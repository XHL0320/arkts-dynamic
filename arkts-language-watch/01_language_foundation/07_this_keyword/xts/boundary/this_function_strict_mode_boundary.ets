/*
 * Case ID: THIS-BOUND-008
 * Coverage ID:
 *   - TK-FUNC-002
 *   - TK-SM-001
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Boundary Reason: dynamic ArkTS strict mode this behavior needs confirmation.
 * Description: Verify strict mode function this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: strict mode function this boundary. Boundary reason: dynamic ArkTS strict mode this behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function strictThis(): Object | undefined { return this }

function main(): void {
  let result: Object | undefined = strictThis()
  // In strict mode: undefined. In non-strict: globalThis.
  assertTrue(result === undefined || result === globalThis, 'strict mode this boundary documented')
}

main()
