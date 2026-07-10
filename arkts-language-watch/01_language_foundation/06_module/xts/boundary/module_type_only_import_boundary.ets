/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: type-only import and export interface/generic boundary.
 * Boundary reason: TS type-only import/export support in dynamic ArkTS needs confirmation.
 */

import { concreteValue, ExportedInterface, ExportedType, genericIdentity }
  from '../helpers/type_only/module_type_only_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(concreteValue === 42, 'concrete value from type-only helper')
  let result: number = genericIdentity<number>(99)
  assertTrue(result === 99, 'generic function from type-only helper')

  // If type-only import is supported:
  // import type { ExportedInterface } from '...'
  // This would be erased at runtime.
  let obj: ExportedInterface = { value: 10 }
  assertTrue(obj.value === 10, 'interface type from helper usable')
}

main()
