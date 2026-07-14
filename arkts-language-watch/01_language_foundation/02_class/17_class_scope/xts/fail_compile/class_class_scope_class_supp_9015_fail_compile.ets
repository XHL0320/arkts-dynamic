/*
 * Case ID: CLASS-FAILC-406
 * Coverage ID:
 *   - CLASS-SUPP-9015
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: declarations
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify accessing class local binding outside its scope is rejected
 */

// Expected error: accessing class local binding outside its scope is rejected

class ScopeFailCase {
  public value: number = 1
}
let value: number = MissingClassName.value
