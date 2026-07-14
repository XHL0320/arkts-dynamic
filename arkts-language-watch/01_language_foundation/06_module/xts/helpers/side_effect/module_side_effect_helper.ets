/*
 * Helper ID: MODULE-HELP-009
 * Used By:
 *   - MODULE-INTEG-003
 *   - MODULE-REGR-001
 * Feature: module
 * Test Type: helper
 * Purpose: Provide side-effect module with counter for import execution tests.
 */
let sideEffectCounter: number = 0
sideEffectCounter++
export function getCounter(): number { return sideEffectCounter }