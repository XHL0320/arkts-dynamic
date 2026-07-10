/*
 * Module Stage 1
 * Test point: side-effect import executes module code.
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
