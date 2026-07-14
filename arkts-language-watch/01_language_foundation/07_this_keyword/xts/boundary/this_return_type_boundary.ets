/*
 * Case ID: THIS-BOUND-013
 * Coverage ID:
 *   - TK-TT-001
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_return_type_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: typescript_compatibility, 02_class
 * Spec Source: pending
 * Boundary Reason: polymorphic this return type support needs confirmation.
 * Description: Verify this return type boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: this return type boundary. Boundary reason: polymorphic this return type support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ThisReturn {
  value: number = 42
  // If polymorphic this is supported:
  // clone(): this { ... }
  clone(): ThisReturn {
    let c: ThisReturn = new ThisReturn()
    c.value = this.value
    return c
  }
}

function main(): void {
  let original: ThisReturn = new ThisReturn()
  let cloned: ThisReturn = original.clone()
  assertTrue(cloned.value === 42, 'clone returns same value')
  assertTrue(cloned !== original, 'clone is different instance')
}

main()
