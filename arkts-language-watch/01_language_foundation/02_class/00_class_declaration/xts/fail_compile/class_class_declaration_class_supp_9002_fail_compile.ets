/*
 * Feature: Class
 * SubFeature: 00_class_declaration
 * CaseType: fail_compile
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9002
 * Related Spec: duplicate class declaration in the same scope is rejected
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: duplicate class declaration in the same scope is rejected

class DuplicateDeclarationFail {
  public value: number = 1
}
class DuplicateDeclarationFail {
  public value: number = 2
}
