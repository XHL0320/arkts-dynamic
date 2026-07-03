/*
 * Feature: Class
 * SubFeature: 17_class_scope
 * CaseType: pass
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9014
 * Related Spec: class member scope and local scope are distinct
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

export function testClassCLASS_SUPP_9014(): void {
  class ScopeCase {
    public value: number = 1
    public read(): number {
      let value: number = 2
      return value + this.value
    }
  }
  let obj: ScopeCase = new ScopeCase()
  assertEqualNumber(obj.read(), 3, "class member and local scope should be distinct")
}

testClassCLASS_SUPP_9014();
