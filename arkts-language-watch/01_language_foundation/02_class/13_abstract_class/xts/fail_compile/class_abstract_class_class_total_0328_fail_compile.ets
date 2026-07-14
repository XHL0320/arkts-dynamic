/*
 * Case ID: CLASS-FAILC-299
 * Coverage ID:
 *   - CLASS-TOTAL-0328
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋值给 abstract class 类型不满足 ArkTS 规则，checker 报错
 */

// Expected error: object literal 赋值给 abstract class 类型不满足 ArkTS 规则，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
