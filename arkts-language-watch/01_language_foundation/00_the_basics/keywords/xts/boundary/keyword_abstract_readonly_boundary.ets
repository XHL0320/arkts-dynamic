/*
 * Case ID: KEYW-BOUND-001
 * Coverage ID:
 *   - KW-TS-004
 *   - KW-TS-005
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify abstract/readonly keywords as TS class modifiers.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If abstract class is supported:
abstract class AbstractBase {
  abstract method(): string
  readonly immutable: number = 42
}

class Concrete extends AbstractBase {
  method(): string { return "concrete" }
}

function main(): void {
  // If abstract/readonly work, they should compile.
  // If not supported, this file should fail to compile.
  let obj: Concrete = new Concrete()
  assertTrue(obj.method() === "concrete", 'abstract/readonly keyword boundary documented')
}

main()
