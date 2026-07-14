/*
 * Case ID: MODULE-PASS-004
 * Coverage ID:

 *   - MOD-ER-001
 * Feature: module
 * Test Type: pass
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-007
 * Spec Source: pending
 * Description: Verify export rename and import renamed binding.
 */
import { renamedValue } from '../helpers/re_export/module_re_export_named_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(renamedValue === 100, 'renamed export import value')
}

main()