/*
 * Case ID: GEN-PASS-005
 * Coverage ID:
 *   - GEN-EXPL-001
 *   - GEN-FUNC-002
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify generic function with explicit type argument.
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
  let result: number = identity<number>(42)
  assertTrue(result === 42, 'explicit type argument works')
  let str: string = identity<string>("world")
  assertTrue(str === "world", 'explicit string type argument')
}

main()
