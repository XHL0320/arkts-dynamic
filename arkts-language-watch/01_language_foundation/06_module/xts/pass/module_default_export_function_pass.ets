/*
 * Module Stage 1
 * Test point: default export function and import.
 */

import defaultFn from '../helpers/default_export/module_default_function_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(defaultFn() === "default-fn", 'default export function call')
}

main()
