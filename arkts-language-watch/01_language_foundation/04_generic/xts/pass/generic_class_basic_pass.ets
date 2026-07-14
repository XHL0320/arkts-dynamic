/*
 * Case ID: GEN-PASS-002
 * Coverage ID:
 *   - GEN-CLASS-001
 *   - GEN-CLASS-002
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: class
 * Spec Source: pending
 * Description: Verify generic class basic declaration and instantiation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Container<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function main(): void {
  let c: Container<number> = new Container<number>(42)
  assertTrue(c.value === 42, 'generic class number container')
  let s: Container<string> = new Container<string>("hi")
  assertTrue(s.value === "hi", 'generic class string container')
}

main()
