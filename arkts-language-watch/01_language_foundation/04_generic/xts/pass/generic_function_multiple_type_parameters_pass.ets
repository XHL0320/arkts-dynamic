/*
 * Case ID: GEN-PASS-007
 * Coverage ID:
 *   - GEN-FUNC-004
 *   - GEN-MULTI-002
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify generic function with multiple type parameters.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function pair<K, V>(key: K, value: V): [K, V] {
  return [key, value]
}

function main(): void {
  let p: [string, number] = pair("age", 30)
  assertTrue(p[0] === "age", 'pair key')
  assertTrue(p[1] === 30, 'pair value')
}

main()
