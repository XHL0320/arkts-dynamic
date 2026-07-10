/*
 * Module Stage 1
 * Test point: namespace import * as ns.
 */

import * as ns from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(ns.exportedValue === 42, 'namespace import const')
  assertTrue(ns.exportedString === "hello", 'namespace import string')
  assertTrue(ns.exportedFunction() === 99, 'namespace import function')
}

main()
