/*
 * Case ID: MODULE-INTEG-001
 * Coverage ID:

 *   - MOD-LB-001
 * Feature: module
 * Test Type: integration
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-005
 * Spec Source: pending
 * Description: Verify that exported let binding updates are visible to importers.
 */
import { liveValue, updateValue, fixedValue }
  from '../helpers/live_binding/module_live_binding_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(liveValue === 1, 'initial live binding value')
  updateValue()
  assertTrue(liveValue === 999, 'live binding updated value visible')
  assertTrue(fixedValue === 42, 'const binding unchanged')
}

main()