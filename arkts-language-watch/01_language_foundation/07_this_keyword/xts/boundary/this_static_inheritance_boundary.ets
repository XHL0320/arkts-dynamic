/*
 * Case ID: THIS-BOUND-015
 * Coverage ID:
 *   - TK-STC-001
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_inheritance_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Boundary Reason: static method this in derived class.
 * Description: Verify static this inheritance boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: static this inheritance boundary. Boundary reason: static method this in derived class.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class StaticBase {
  static baseValue: number = 42
  static getBaseValue(): number { return this.baseValue }
}

class StaticDerived extends StaticBase {
  static derivedValue: number = 99
}

function main(): void {
  assertTrue(StaticDerived.getBaseValue() === 42, 'static method inherited, this is StaticDerived class')
}

main()
