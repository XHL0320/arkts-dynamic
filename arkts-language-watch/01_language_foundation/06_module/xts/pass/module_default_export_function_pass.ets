/*
 * Case ID: MODULE-PASS-001
 * Coverage ID:

 *   - MOD-DE-002
 * Feature: module
 * Test Type: pass
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: function
 * Helper IDs:
 *   - MODULE-HELP-003
 * Spec Source: pending
 * Description: Verify default export function and import.
 */
import defaultFn from '../helpers/default_export/module_default_function_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(defaultFn() === "default-fn", 'default export function call')
}

main()