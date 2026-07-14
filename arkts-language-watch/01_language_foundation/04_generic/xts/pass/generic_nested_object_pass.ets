/*
 * Case ID: GEN-PASS-013
 * Coverage ID:
 *   - GEN-NEST-002
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify nested generic object type.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Pair<A, B> {
  first: A
  second: B
  constructor(a: A, b: B) { this.first = a; this.second = b }
}

function main(): void {
  let p: Pair<string, Pair<number, boolean>> = new Pair("outer", new Pair(42, true))
  assertTrue(p.first === "outer", 'nested generic first')
  assertTrue(p.second.first === 42, 'nested generic inner first')
  assertTrue(p.second.second === true, 'nested generic inner second')
}

main()
