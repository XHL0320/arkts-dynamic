/*
 * Helper ID: MODULE-HELP-007
 * Used By:
 *   - MODULE-PASS-004
 *   - MODULE-INTEG-002
 *   - MODULE-BOUND-005
 *   - MODULE-BOUND-006
 * Feature: module
 * Test Type: helper
 * Purpose: Provide re-export forwarding from source helper.
 */
export { sourceValue, sourceFunction } from '../re_export/module_re_export_source_helper'
export { sourceValue as renamedValue } from '../re_export/module_re_export_source_helper'
export * from '../re_export/module_re_export_source_helper'