/*
 * Case ID: THIS-BOUND-006
 * Coverage ID:
 *   - TK-DCS-002
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_constructor_return_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Boundary Reason: returning object from constructor changes this.
 * Description: Verify derived constructor return and this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: derived constructor return and this boundary. Boundary reason: returning object from constructor changes this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Base { baseValue: number = 1 }

class Derived extends Base {
  derivedValue: number = 2
  constructor() {
    super()
    // If constructor returns an object, that becomes the result instead of this.
    // This boundary documents whether this behavior is enforced.
  }
}

function main(): void {
  let d: Derived = new Derived()
  assertTrue(d.derivedValue === 2, 'derived this is instance')
  assertTrue(d.baseValue === 1, 'base value inherited')
}

main()
