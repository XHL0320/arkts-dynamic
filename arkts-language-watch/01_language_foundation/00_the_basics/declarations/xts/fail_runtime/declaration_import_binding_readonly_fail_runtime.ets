/*
 * Case ID: DECL-FAILR-004
 * Coverage ID:
 *   - DECL-IMPORT-003
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Helper IDs:
 *   - DECL-HELP-001
 * Expected Exception: pending
 * Description: Verify imported binding is read-only in the importing module.. assigning to an imported binding throws a runtime exception.
 */

import { importedValue } from './modules/declaration_import_binding_readonly_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    importedValue = 2
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'expected runtime exception for imported binding assignment')
  assertTrue(importedValue === 1, 'imported binding should remain unchanged')
}

main()
