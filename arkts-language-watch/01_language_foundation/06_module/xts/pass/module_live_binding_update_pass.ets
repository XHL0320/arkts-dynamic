/*
 * Module Stage 1
 * Test point: live binding — exported let updated, import sees new value.
 */

import { liveValue, updateValue, fixedValue }
  from '../helpers/live_binding/module_live_binding_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(liveValue === 1, 'initial live binding value')
  updateValue()
  assertTrue(liveValue === 999, 'live binding updated value visible')
  assertTrue(fixedValue === 42, 'const binding unchanged')
}

main()
