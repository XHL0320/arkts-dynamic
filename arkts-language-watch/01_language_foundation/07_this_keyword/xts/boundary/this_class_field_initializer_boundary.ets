/*
 * Case ID: THIS-BOUND-004
 * Coverage ID:
 *   - TK-CF-001
 *   - TK-CF-002
 * Feature: this_keyword
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Boundary Reason: field initializer this behavior in dynamic ArkTS needs confirmation.
 * Description: Verify class field initializer this boundary.
 * Notes: Original metadata: This Keyword Stage 1 Boundary / pending confirmation. Test point: class field initializer this boundary. Boundary reason: field initializer this behavior in dynamic ArkTS needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class FieldTest {
  x: number = 10
  y: number = this.x * 2  // field initializer using this
}

function main(): void {
  let obj: FieldTest = new FieldTest()
  assertTrue(obj.x === 10, 'field x initialized')
  assertTrue(obj.y === 20, 'field y uses this in initializer')
}

main()
