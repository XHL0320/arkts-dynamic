/*
 * Case ID: CLASS-FAILC-044
 * Coverage ID:
 *   - CLASS-TOTAL-0046
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 编译负向场景
 */

// Expected error: 编译负向场景

class FieldFailCase {
  public value: number = "wrong"
}
