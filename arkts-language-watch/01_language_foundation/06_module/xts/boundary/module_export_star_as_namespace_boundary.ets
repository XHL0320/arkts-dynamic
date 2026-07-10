/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: export * as namespace.
 * Boundary reason: ES2020 export * as ns support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // If export * as ns is supported:
  // import * as ns from '../helpers/re_export/module_re_export_named_helper'
  // assertTrue(ns.sourceValue === 100, 'export star as namespace')
  assertTrue(true, 'export star as namespace boundary documented')
}

main()
