/*
 * Case ID: CLASS-FAILC-309
 * Coverage ID:
 *   - CLASS-TOTAL-0912
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract class 中 constructor 标注返回类型，如 ArkTS 禁止则 checker 报错
 */

// Expected error: abstract class 中 constructor 标注返回类型，如 ArkTS 禁止则 checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
