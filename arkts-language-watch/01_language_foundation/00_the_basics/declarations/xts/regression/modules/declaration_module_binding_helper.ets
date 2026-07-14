/*
 * Helper ID: DECL-HELP-002
 * Used By:
 *   - DECL-REGR-001
 * Feature: language_basics
 * Test Type: helper
 * Owner Chapter: 00_the_basics
 * Purpose: Module binding helper
 */

export let counter: number = 1

export function updateCounter(value: number): void {
  counter = value
}
