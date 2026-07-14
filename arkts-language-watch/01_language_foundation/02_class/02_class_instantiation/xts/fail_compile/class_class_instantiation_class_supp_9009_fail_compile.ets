/*
 * Case ID: CLASS-FAILC-025
 * Coverage ID:
 *   - CLASS-SUPP-9009
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify assigning class constructor value to instance variable is rejected
 */

// Expected error: assigning class constructor value to instance variable is rejected

class FieldFailCase {
  public value: number = "wrong"
}
