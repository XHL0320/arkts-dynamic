/*
 * Case ID: THIS-BOUND-012
 * Coverage ID:
 *   - TK-TT-001
 *   - TK-TT-003
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: typescript_compatibility, 02_class
 * Spec Source: pending
 * Boundary Reason: polymorphic this in inheritance chain needs confirmation.
 * Description: Verify polymorphic this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: polymorphic this boundary. Boundary reason: polymorphic this in inheritance chain needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class PolyBase {
  value: number = 10
  // If polymorphic this is supported:
  // fluent(): this { return this }
  fluent(): PolyBase { return this }
}

class PolyDerived extends PolyBase {
  extra: number = 20
}

function main(): void {
  let d: PolyDerived = new PolyDerived()
  let result: PolyBase = d.fluent()
  assertTrue(result.value === 10, 'polymorphic this returns instance')
}

main()
