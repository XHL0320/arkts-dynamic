/*
 * Case ID: DECL-REGR-001
 * Coverage ID:
 *   - DECL-IMPORT-002
 * Feature: language_basics
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Helper IDs:
 *   - DECL-HELP-002
 * Regression Issue: pending
 * Description: Verify imported live binding should reflect updates from the exporting module.
 */

import { counter, updateCounter } from './modules/declaration_module_binding_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(counter === 1, 'initial imported binding should be readable')
  updateCounter(2)
  assertTrue(counter === 2, 'imported live binding should reflect exporter update')
}

main()
