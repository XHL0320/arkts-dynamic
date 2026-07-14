/*
 * Case ID: DECL-FAILC-005
 * Coverage ID:
 *   - DECL-IMPORT-005
 * Feature: language_basics
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Helper IDs:
 *   - DECL-HELP-001
 * Expected Diagnostic: pending
 * Description: Verify declarations test. compile error.
 */

function load(): void {
  import { importedValue } from '../fail_runtime/modules/declaration_import_binding_readonly_helper'
}
