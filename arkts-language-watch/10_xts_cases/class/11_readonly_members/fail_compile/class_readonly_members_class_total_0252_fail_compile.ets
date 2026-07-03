/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0252
 * Related Spec: protected/private readonly field 不能满足 public interface property，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: protected/private readonly field 不能满足 public interface property，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
