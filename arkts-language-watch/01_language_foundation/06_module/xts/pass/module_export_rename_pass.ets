/*
 * Module Stage 1
 * Test point: export rename and import renamed binding.
 */

import { renamedValue } from '../helpers/re_export/module_re_export_named_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(renamedValue === 100, 'renamed export import value')
}

main()
