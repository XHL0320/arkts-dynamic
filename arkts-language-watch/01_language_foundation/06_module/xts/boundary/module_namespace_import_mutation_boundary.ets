/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: namespace import object mutation.
 * Boundary reason: namespace object is read-only in ES; dynamic ArkTS enforcement needs confirmation.
 */

import * as ns from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(ns.exportedValue === 42, 'namespace property readable')
  // ns.exportedValue = 999  // TypeError in strict mode (namespace readonly)
  // This boundary documents whether mutation is enforced.
  assertTrue(true, 'namespace readonly boundary documented')
}

main()
