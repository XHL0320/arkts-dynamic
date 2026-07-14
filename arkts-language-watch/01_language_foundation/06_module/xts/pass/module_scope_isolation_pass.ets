/*
 * Case ID: MODULE-PASS-009
 * Coverage ID:

 *   - MOD-SCOPE-001
 *   - MOD-SCOPE-004
 * Feature: module
 * Test Type: pass
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-006
 * Spec Source: pending
 * Description: Verify module scope isolation across files.
 */
import { exportedValue } from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let exportedValue_local: number = 0  // different from imported exportedValue

function main(): void {
  assertTrue(exportedValue === 42, 'imported value from helper')
  assertTrue(exportedValue_local === 0, 'local var with similar name does not conflict')
  exportedValue_local = 99
  assertTrue(exportedValue_local === 99, 'local var can be modified')
  assertTrue(exportedValue === 42, 'imported value still unchanged')
}

main()