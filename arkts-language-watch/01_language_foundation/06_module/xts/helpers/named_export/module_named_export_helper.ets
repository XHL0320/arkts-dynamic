/*
 * Helper ID: MODULE-HELP-006
 * Used By:
 *   - MODULE-PASS-006
 *   - MODULE-PASS-007
 *   - MODULE-PASS-009
 *   - MODULE-BOUND-004
 *   - MODULE-BOUND-006
 *   - MODULE-BOUND-009
 * Feature: module
 * Test Type: helper
 * Purpose: Provide named exports (const, function, class, let) for import tests.
 */
export const exportedValue: number = 42
export const exportedString: string = "hello"
export function exportedFunction(): number { return 99 }
export class ExportedClass { value: number = 10 }
export let mutableValue: number = 1