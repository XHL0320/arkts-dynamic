/*
 * Feature: Class
 * SubFeature: 00_class_declaration
 * CaseType: pass
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9001
 * Related Spec: class declaration creates a constructable class
 * Expected: Class scenario compiles and runs with focused assertions.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertThrows(fn: () => void, message: string): void {
  let thrown: boolean = false
  try {
    fn()
  } catch (e) {
    thrown = true
  }
  if (!thrown) {
    throw new Error(message)
  }
}

export function testClassCLASS_SUPP_9001(): void {
  class DeclarationCase {
    public value: number = 1
  }
  let obj: DeclarationCase = new DeclarationCase()
  assertEqualNumber(obj.value, 1, "class declaration should create constructable class")
}

testClassCLASS_SUPP_9001();
