/*
 * Case ID: GEN-PASS-004
 * Coverage ID:
 *   - GEN-FUNC-001
 *   - GEN-TYPEPARAM-004
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify generic function basic declaration and type parameter usage.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function identity<T>(value: T): T {
  return value
}

function main(): void {
  let result: number = identity(42)
  assertTrue(result === 42, 'generic function returns input value')
  let str: string = identity("hello")
  assertTrue(str === "hello", 'generic function works with string')
}

main()
