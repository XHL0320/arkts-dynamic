/*
 * Module Stage 1
 * Test point: module scope isolation — same-named vars in different modules don't conflict.
 */

import { exportedValue } from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let exportedValue_local: number = 0  // different from imported exportedValue

function main(): void {
  assertTrue(exportedValue === 42, 'imported value from helper')
  assertTrue(exportedValue_local === 0, 'local var with similar name does not conflict')
  exportedValue_local = 99
  assertTrue(exportedValue_local === 99, 'local var can be modified')
  assertTrue(exportedValue === 42, 'imported value still unchanged')
}

main()
