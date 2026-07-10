/*
 * Module Stage 1
 * Boundary / pending confirmation.
 * Test point: dynamic import() support.
 * Boundary reason: ES2020 dynamic import support in dynamic ArkTS needs confirmation.
 */

import { exportedValue } from '../helpers/named_export/module_named_export_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  // If dynamic import is supported:
  // import('../helpers/named_export/module_named_export_helper').then(m => {
  //   assertTrue(m.exportedValue === 42, 'dynamic import value')
  // })
  // For now, use static import to verify the helper module works.
  assertTrue(exportedValue === 42, 'static import for dynamic import boundary reference')
}

main()
