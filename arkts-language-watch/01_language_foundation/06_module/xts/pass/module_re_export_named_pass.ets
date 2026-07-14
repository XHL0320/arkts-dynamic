/*
 * Case ID: MODULE-INTEG-002
 * Coverage ID:

 *   - MOD-RE-001
 * Feature: module
 * Test Type: integration
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-007
 *   - MODULE-HELP-008
 * Spec Source: pending
 * Description: Verify re-export named from an intermediate module.
 */
import { sourceValue, sourceFunction }
  from '../helpers/re_export/module_re_export_named_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(sourceValue === 100, 're-exported const value')
  assertTrue(sourceFunction() === "source", 're-exported function')
}

main()