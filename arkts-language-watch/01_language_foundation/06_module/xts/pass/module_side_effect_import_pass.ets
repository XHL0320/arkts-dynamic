/*
 * Case ID: MODULE-INTEG-003
 * Coverage ID:

 *   - MOD-SSI-001
 * Feature: module
 * Test Type: integration
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: statements
 * Helper IDs:
 *   - MODULE-HELP-009
 * Spec Source: pending
 * Description: Verify side-effect import executes module code.
 */
import '../helpers/side_effect/module_side_effect_helper'
import { getCounter } from '../helpers/side_effect/module_side_effect_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(getCounter() === 1, 'side-effect import executed module code')
}

main()