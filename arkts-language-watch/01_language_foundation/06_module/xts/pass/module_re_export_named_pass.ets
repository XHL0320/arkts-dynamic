/*
 * Module Stage 1
 * Test point: re-export named from another module.
 */

import { sourceValue, sourceFunction }
  from '../helpers/re_export/module_re_export_named_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(sourceValue === 100, 're-exported const value')
  assertTrue(sourceFunction() === "source", 're-exported function')
}

main()
