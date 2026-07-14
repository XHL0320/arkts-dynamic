/*
 * Helper ID: MODULE-HELP-005
 * Used By:
 *   - MODULE-INTEG-001
 *   - MODULE-BOUND-007
 * Feature: module
 * Test Type: helper
 * Purpose: Provide live binding exports with mutable let and updateValue function.
 */
export let liveValue: number = 1
export function updateValue(): void { liveValue = 999 }
export const fixedValue: number = 42