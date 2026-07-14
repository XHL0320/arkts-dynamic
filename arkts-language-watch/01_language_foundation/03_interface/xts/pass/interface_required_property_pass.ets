/*
 * Case ID: INTF-PASS-010
 * Coverage ID:
 *   - IF-DECL-002
 *   - IF-PROP-001
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify interface with required property declaration and signature.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Person {
  name: string
  age: number
}

function main(): void {
  let p: Person = { name: "Alice", age: 30 }
  assertTrue(p.name === "Alice", 'required property name')
  assertTrue(p.age === 30, 'required property age')
}

main()
