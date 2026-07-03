/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_runtime
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-1074
 * Related Spec: static method 提取后 this 丢失导致 static field 访问失败
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

export function testClassCLASS_TOTAL_1074(): void {
  class RuntimeThisCase {
    public value: number = 1
    public getValue(): number {
      return this.value
    }
  }
  let obj: RuntimeThisCase = new RuntimeThisCase()
  assertThrows((): void => {
    let fn: () => number = obj.getValue
    fn()
  }, "unbound method should throw or fail at runtime")
}

testClassCLASS_TOTAL_1074();
