/*
 * Case ID: MODULE-PASS-002
 * Coverage ID:

 *   - MOD-DE-001
 * Feature: module
 * Test Type: pass
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-004
 * Spec Source: pending
 * Description: Verify default export value and import.
 */
import defaultValue from '../helpers/default_export/module_default_value_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(defaultValue === 77, 'default export value imported')
}

main()