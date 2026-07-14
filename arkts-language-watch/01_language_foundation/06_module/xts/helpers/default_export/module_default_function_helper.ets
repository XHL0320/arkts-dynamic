/*
 * Helper ID: MODULE-HELP-003
 * Used By:
 *   - MODULE-PASS-001
 * Feature: module
 * Test Type: helper
 * Purpose: Provide default export function for default import test.
 */
export default function defaultFunction(): string { return "default-fn" }
export const namedValue: number = 55