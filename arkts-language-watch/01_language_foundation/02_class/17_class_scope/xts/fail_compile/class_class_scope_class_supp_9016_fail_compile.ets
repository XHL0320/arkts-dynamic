/*
 * Case ID: CLASS-FAILC-407
 * Coverage ID:
 *   - CLASS-SUPP-9016
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: declarations
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify using undeclared class name is rejected
 */

// Expected error: using undeclared class name is rejected

class ScopeFailCase {
  public value: number = 1
}
let value: number = MissingClassName.value
