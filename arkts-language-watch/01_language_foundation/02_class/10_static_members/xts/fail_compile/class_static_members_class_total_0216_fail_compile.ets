/*
 * Case ID: CLASS-FAILC-198
 * Coverage ID:
 *   - CLASS-TOTAL-0216
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify Box<number>.staticMember 这类实例化类型访问 static，checker 报错或边界记录
 */

// Expected error: Box<number>.staticMember 这类实例化类型访问 static，checker 报错或边界记录

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
