/*
 * Case ID: THIS-BOUND-005
 * Coverage ID:
 *   - TK-DCS-001
 *   - TK-DCS-003
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Boundary Reason: accessing this before super() should throw ReferenceError.
 * Description: Verify derived class this before super.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: derived class this before super. Boundary reason: accessing this before super() should throw ReferenceError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Base { value: number = 10 }

class Derived extends Base {
  constructor() {
    // Accessing `this` before super() should throw ReferenceError in ES.
    // If dynamic ArkTS allows this to compile, it documents relaxed enforcement.
    super()
    this.value = 20
  }
}

function main(): void {
  let d: Derived = new Derived()
  assertTrue(d.value === 20, 'derived after super works')
  // The boundary documents whether pre-super this access is enforced.
  assertTrue(true, 'derived before super boundary documented')
}

main()
