/*
 * Declaration Stage 1
 * Regression candidate.
 * Test point: imported live binding should reflect updates from the exporting module.
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
