/*
 * Module Stage 1
 * Regression test.
 * Test point: side-effect import execution and module initialization.
 * Regression reason: verify module side-effect execution and import order behavior.
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
