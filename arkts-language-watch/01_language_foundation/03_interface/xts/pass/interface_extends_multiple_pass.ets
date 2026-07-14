/*
 * Case ID: INTF-PASS-004
 * Coverage ID:
 *   - IF-MULTEXT-001
 *   - IF-MULTEXT-002
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify interface extends multiple interfaces with member merge.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface A {
  a: number
}

interface B {
  b: string
}

interface C extends A, B {
  c: boolean
}

function main(): void {
  let obj: C = { a: 1, b: "hello", c: true }
  assertTrue(obj.a === 1, 'inherited from A')
  assertTrue(obj.b === "hello", 'inherited from B')
  assertTrue(obj.c === true, 'own property c')
}

main()
