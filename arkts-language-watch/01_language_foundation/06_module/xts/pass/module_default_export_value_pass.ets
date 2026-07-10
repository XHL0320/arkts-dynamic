/*
 * Module Stage 1
 * Test point: default export value and import.
 */

import defaultValue from '../helpers/default_export/module_default_value_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(defaultValue === 77, 'default export value imported')
}

main()
