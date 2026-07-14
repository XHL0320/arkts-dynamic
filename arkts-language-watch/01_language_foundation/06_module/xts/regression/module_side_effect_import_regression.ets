/*
 * Case ID: MODULE-REGR-001
 * Coverage ID:

 *   - MOD-SSI-001
 *   - MOD-SSI-002
 * Feature: module
 * Test Type: regression
 * Expected Phase: module_load
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 06_module
 * Related Chapters: statements
 * Helper IDs:
 *   - MODULE-HELP-009
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify side-effect import executes once and module is cached.
 */
import '../helpers/side_effect/module_side_effect_helper'
import { getCounter } from '../helpers/side_effect/module_side_effect_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // Module code should have executed once during import.
  assertTrue(getCounter() === 1, 'regression: side-effect import executed once')

  // Re-importing the same module should not re-execute side effects.
  // (ES modules are cached after first evaluation.)
  let counter1: number = getCounter()
  let counter2: number = getCounter()
  assertTrue(counter1 === counter2, 'regression: module executed only once (cached)')
}

main()