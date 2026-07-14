/*
 * Case ID: KEYW-BOUND-008
 * Coverage ID:
 *   - KW-OP-007
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify super keyword in class context.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Base {
  greet(): string { return "hello from Base" }
}

class Derived extends Base {
  greet(): string { return super.greet() + " and Derived" }
}

function main(): void {
  let d: Derived = new Derived()
  let result: string = d.greet()
  assertTrue(result === "hello from Base and Derived", 'super keyword in class context')
}

main()
