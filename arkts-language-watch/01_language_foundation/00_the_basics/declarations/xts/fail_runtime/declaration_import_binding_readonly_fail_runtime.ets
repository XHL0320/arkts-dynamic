/*
 * Declaration Stage 1
 * Test point: imported binding is read-only in the importing module.
 * Expected: assigning to an imported binding throws a runtime exception.
 */

import { importedValue } from './modules/declaration_import_binding_readonly_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    importedValue = 2
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'expected runtime exception for imported binding assignment')
  assertTrue(importedValue === 1, 'imported binding should remain unchanged')
}

main()
