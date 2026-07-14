/*
 * Case ID: MODULE-PASS-003
 * Coverage ID:

 *   - MOD-EL-001
 * Feature: module
 * Test Type: pass
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-008
 * Spec Source: pending
 * Description: Verify export list and import multiple bindings.
 */
import { sourceValue, sourceFunction, SourceClass }
  from '../helpers/re_export/module_re_export_source_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(sourceValue === 100, 'export list const')
  assertTrue(sourceFunction() === "source", 'export list function')
  let obj: SourceClass = new SourceClass()
  assertTrue(obj.id === 1, 'export list class')
}

main()