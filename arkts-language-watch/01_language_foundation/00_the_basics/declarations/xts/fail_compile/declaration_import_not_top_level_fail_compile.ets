/*
 * Declaration Stage 1
 * Expected: compile error.
 * Reason: import declarations are only valid at module top level.
 */

function load(): void {
  import { importedValue } from '../fail_runtime/modules/declaration_import_binding_readonly_helper'
}
