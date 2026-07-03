/*
 * Feature: Class
 * SubFeature: 17_class_scope
 * CaseType: fail_compile
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9015
 * Related Spec: accessing class local binding outside its scope is rejected
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: accessing class local binding outside its scope is rejected

class ScopeFailCase {
  public value: number = 1
}
let value: number = MissingClassName.value
