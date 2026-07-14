/*
 * Case ID: CLASS-FAILC-024
 * Coverage ID:
 *   - CLASS-SUPP-9008
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify new class with wrong constructor argument type is rejected
 */

// Expected error: new class with wrong constructor argument type is rejected

class FieldFailCase {
  public value: number = "wrong"
}
