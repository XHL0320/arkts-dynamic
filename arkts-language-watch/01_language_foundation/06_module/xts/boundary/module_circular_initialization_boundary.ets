/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: circular dependency initialization order.
 * Boundary reason: accessing not-yet-initialized exports in circular deps may return undefined.
 */

import { initB } from '../helpers/circular/module_circular_b_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(initB === "initialized-B", 'circular dependency module B initialized')
  // Depending on execution order, initA may or may not be initialized yet.
  // This boundary documents the initialization order behavior.
}

main()
