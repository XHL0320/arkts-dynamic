/*
 * Feature: Class
 * SubFeature: 02_class_instantiation
 * CaseType: fail_compile
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9008
 * Related Spec: new class with wrong constructor argument type is rejected
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: new class with wrong constructor argument type is rejected

class FieldFailCase {
  public value: number = "wrong"
}
