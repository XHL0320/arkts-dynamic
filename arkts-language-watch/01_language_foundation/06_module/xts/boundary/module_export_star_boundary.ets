/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: export * from module.
 * Boundary reason: export star support in dynamic ArkTS needs confirmation.
 */

import * as ns from '../helpers/re_export/module_re_export_named_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(ns.sourceValue === 100, 'export star forwarded const')
  assertTrue(typeof ns.sourceFunction === 'function', 'export star forwarded function')
}

main()
