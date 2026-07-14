/*
 * Case ID: DECL-FAILR-001
 * Coverage ID:
 *   - DECL-CLASS-001
 * Feature: language_basics
 * Test Type: fail_runtime
 * Expected Phase: runtime
 * Expected Outcome: exception
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Expected Exception: pending
 * Description: Verify class declaration temporal dead zone.. reading a class binding before declaration throws a runtime exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let ignored = A
  } catch (e) {
    thrown = true
  }
  class A {
  }
  assertTrue(thrown, 'expected TDZ runtime exception for class declaration')
}

main()
