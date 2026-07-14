/*
 * Case ID: THIS-BOUND-014
 * Coverage ID:
 *   - TK-STC-003
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_field_initializer_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Boundary Reason: static field this is class constructor; behavior needs confirmation.
 * Description: Verify static field initializer this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: static field initializer this boundary. Boundary reason: static field this is class constructor; behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class StaticField {
  static count: number = 0
  static id: number = ++StaticField.count  // static field using class reference
  static getIdViaThis(): number { return this.id }
}

function main(): void {
  assertTrue(StaticField.id === 1, 'static field initialized')
  assertTrue(StaticField.getIdViaThis() === 1, 'static method this is class')
}

main()
