/*
 * Case ID: MODULE-PASS-006
 * Coverage ID:

 *   - MOD-NE-001
 *   - MOD-NI-001
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
 * Description: Verify named export and named import behavior.
 */
import { exportedValue, exportedString, exportedFunction, ExportedClass, mutableValue }
  from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(exportedValue === 42, 'imported const value')
  assertTrue(exportedString === "hello", 'imported string value')
  assertTrue(exportedFunction() === 99, 'imported function call')
  let obj: ExportedClass = new ExportedClass()
  assertTrue(obj.value === 10, 'imported class instance')
  assertTrue(mutableValue === 1, 'imported let value')
}

main()