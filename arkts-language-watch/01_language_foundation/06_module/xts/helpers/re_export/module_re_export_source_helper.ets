/*
 * Helper ID: MODULE-HELP-008
 * Used By:
 *   - MODULE-PASS-003
 *   - MODULE-HELP-007
 * Feature: module
 * Test Type: helper
 * Purpose: Provide source exports for re-export chain tests.
 */
export const sourceValue: number = 100
export function sourceFunction(): string { return "source" }
export class SourceClass { id: number = 1 }