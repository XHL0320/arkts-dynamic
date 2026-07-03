/*
 * Feature: Class
 * SubFeature: 02_class_instantiation
 * CaseType: fail_compile
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9009
 * Related Spec: assigning class constructor value to instance variable is rejected
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: assigning class constructor value to instance variable is rejected

class FieldFailCase {
  public value: number = "wrong"
}
