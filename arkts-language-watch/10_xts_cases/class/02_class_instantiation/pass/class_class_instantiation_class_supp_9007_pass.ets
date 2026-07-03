/*
 * Feature: Class
 * SubFeature: 02_class_instantiation
 * CaseType: pass
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9007
 * Related Spec: new class with typed constructor argument initializes field
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

export function testClassCLASS_SUPP_9007(): void {
  class ConstructorCase {
    public value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ConstructorCase = new ConstructorCase(3)
  assertEqualNumber(obj.value, 3, "constructor should initialize field")
}

testClassCLASS_SUPP_9007();
