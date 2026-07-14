/*
 * Case ID: DECL-PASS-004
 * Coverage ID:
 *   - DECL-MOD-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify module top-level lexical declarations.. top-level let and const bindings are readable after initialization.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let moduleLet: number = 1
const moduleConst: number = 2

function main(): void {
  assertTrue(moduleLet === 1, 'top-level let should be initialized')
  assertTrue(moduleConst === 2, 'top-level const should be initialized')
}

main()
