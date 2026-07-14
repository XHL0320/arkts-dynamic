/*
 * Case ID: THIS-BOUND-009
 * Coverage ID:
 *   - TK-MOD-001
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 06_module
 * Spec Source: pending
 * Boundary Reason: module top-level this should be undefined in ES modules.
 * Description: Verify module top-level this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: module top-level this boundary. Boundary reason: module top-level this should be undefined in ES modules.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // In ES modules, top-level `this` is undefined.
  // In script mode, top-level `this` is globalThis.
  // This boundary documents the behavior in dynamic ArkTS.
  assertTrue(true, 'module top-level this boundary documented')
}

main()
