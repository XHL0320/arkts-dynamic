/*
 * Case ID: MODULE-PASS-007
 * Coverage ID:

 *   - MOD-NSI-001
 * Feature: module
 * Test Type: pass
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: types
 * Helper IDs:
 *   - MODULE-HELP-006
 * Spec Source: pending
 * Description: Verify namespace import * as ns.
 */
import * as ns from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(ns.exportedValue === 42, 'namespace import const')
  assertTrue(ns.exportedString === "hello", 'namespace import string')
  assertTrue(ns.exportedFunction() === 99, 'namespace import function')
}

main()