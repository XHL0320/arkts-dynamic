/*
 * Case ID: CLASS-FAILC-001
 * Coverage ID:
 *   - CLASS-SUPP-9002
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: declarations
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify duplicate class declaration in the same scope is rejected
 */

// Expected error: duplicate class declaration in the same scope is rejected

class DuplicateDeclarationFail {
  public value: number = 1
}
class DuplicateDeclarationFail {
  public value: number = 2
}
