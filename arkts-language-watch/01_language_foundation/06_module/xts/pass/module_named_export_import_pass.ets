/*
 * Module Stage 1
 * Test point: named export and import basic.
 * Expected: imported values match exported values.
 */

import { exportedValue, exportedString, exportedFunction, ExportedClass, mutableValue }
  from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(exportedValue === 42, 'imported const value')
  assertTrue(exportedString === "hello", 'imported string value')
  assertTrue(exportedFunction() === 99, 'imported function call')
  let obj: ExportedClass = new ExportedClass()
  assertTrue(obj.value === 10, 'imported class instance')
  assertTrue(mutableValue === 1, 'imported let value')
}

main()
