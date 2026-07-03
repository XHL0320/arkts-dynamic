/*
 * Feature: Class
 * SubFeature: 02_class_instantiation
 * CaseType: fail_runtime
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9010
 * Related Spec: constructor throwing abrupt completion is observable
 * Expected: Runtime throws an exception; error message is not asserted.
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

export function testClassCLASS_SUPP_9010(): void {
  class ConstructorThrowCase {
    constructor() {
      throw new Error("constructor failed")
    }
  }
  assertThrows((): void => {
    let obj: ConstructorThrowCase = new ConstructorThrowCase()
  }, "constructor should throw")
}

testClassCLASS_SUPP_9010();
