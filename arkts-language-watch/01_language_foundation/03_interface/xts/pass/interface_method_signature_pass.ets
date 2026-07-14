/*
 * Case ID: INTF-PASS-006
 * Coverage ID:
 *   - IF-DECL-003
 *   - IF-METHOD-001
 *   - IF-METHOD-005
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify interface method signature declaration with multiple methods.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Greeter {
  greet(): string
  getName(): string
}

class EnglishGreeter implements Greeter {
  greet(): string { return "Hello" }
  getName(): string { return "English" }
}

function main(): void {
  let g: Greeter = new EnglishGreeter()
  assertTrue(g.greet() === "Hello", 'method signature greet')
  assertTrue(g.getName() === "English", 'method signature getName')
}

main()
