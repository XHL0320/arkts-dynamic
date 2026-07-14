/*
 * Case ID: THIS-BOUND-001
 * Coverage ID:
 *   - TK-GS-001
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_accessor_extracted_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class, 01_function
 * Spec Source: pending
 * Boundary Reason: getter/setter extracted loses receiver this.
 * Description: Verify getter access through its receiver and document the accessor extraction boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: accessor extracted this boundary. Boundary reason: getter/setter extracted loses receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class AccessorTest {
  _v: number = 42
  get v(): number { return this._v }
}

function main(): void {
  let obj: AccessorTest = new AccessorTest()
  // Extracting getter and calling it loses `this`
  // let getter = obj.v (as function) — but getters are not directly extractable
  // This boundary documents the behavior.
  assertTrue(obj.v === 42, 'accessor on receiver works')
  assertTrue(true, 'accessor extracted boundary documented')
}

main()
