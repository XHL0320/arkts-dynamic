/*
 * Module Stage 1
 * Test point: export list and import multiple.
 */

import { sourceValue, sourceFunction, SourceClass }
  from '../helpers/re_export/module_re_export_source_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(sourceValue === 100, 'export list const')
  assertTrue(sourceFunction() === "source", 'export list function')
  let obj: SourceClass = new SourceClass()
  assertTrue(obj.id === 1, 'export list class')
}

main()
