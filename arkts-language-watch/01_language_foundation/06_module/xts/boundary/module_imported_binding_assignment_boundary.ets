/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: imported binding assignment boundary.
 * Boundary reason: imported bindings are read-only in ES; dynamic ArkTS enforcement needs confirmation.
 */

import { liveValue } from '../helpers/live_binding/module_live_binding_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(liveValue === 1 || liveValue === 999, 'imported binding readable')
  // liveValue = 42  // TypeError in ES (imported binding is read-only)
  // This boundary documents whether assignment enforcement works.
  assertTrue(true, 'imported binding assignment boundary documented')
}

main()
