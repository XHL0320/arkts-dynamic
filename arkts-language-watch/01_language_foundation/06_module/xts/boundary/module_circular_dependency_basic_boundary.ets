/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: circular dependency basic.
 * Boundary reason: circular dependency initialization order needs confirmation.
 */

import { funcA, initA } from '../helpers/circular/module_circular_a_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(initA === "initialized-A", 'circular dependency module A initialized')
  assertTrue(funcA() === "AB", 'circular dependency function call works')
}

main()
