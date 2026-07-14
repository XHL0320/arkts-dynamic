/*
 * Case ID: MODULE-BOUND-006
 * Coverage ID:

 *   - MOD-ES-001
 *   - MOD-ES-005
 * Feature: module
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-007
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic behavior has not been verified.
 * Description: Verify export * from module.
 */
import * as ns from '../helpers/re_export/module_re_export_named_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(ns.sourceValue === 100, 'export star forwarded const')
  assertTrue(typeof ns.sourceFunction === 'function', 'export star forwarded function')
}

main()