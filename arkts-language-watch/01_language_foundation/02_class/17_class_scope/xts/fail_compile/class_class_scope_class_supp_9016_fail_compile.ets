/*
 * Feature: Class
 * SubFeature: 17_class_scope
 * CaseType: fail_compile
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9016
 * Related Spec: using undeclared class name is rejected
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: using undeclared class name is rejected

class ScopeFailCase {
  public value: number = 1
}
let value: number = MissingClassName.value
