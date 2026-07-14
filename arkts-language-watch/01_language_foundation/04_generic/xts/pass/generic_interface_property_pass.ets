/*
 * Case ID: GEN-PASS-010
 * Coverage ID:
 *   - GEN-IF-002
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify generic interface property type.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Holder<T> {
  value: T
}

function main(): void {
  let h: Holder<number> = { value: 42 }
  assertTrue(h.value === 42, 'generic interface property number')
  let s: Holder<string> = { value: "prop" }
  assertTrue(s.value === "prop", 'generic interface property string')
}

main()
