/*
 * Helper ID: MODULE-HELP-010
 * Used By:
 *   - MODULE-BOUND-012
 * Feature: module
 * Test Type: helper
 * Purpose: Provide interface, type alias, and generic function exports for type-only import boundary test.
 */
export interface ExportedInterface { value: number }
export type ExportedType = string | number
export function genericIdentity<T>(value: T): T { return value }
export const concreteValue: number = 42