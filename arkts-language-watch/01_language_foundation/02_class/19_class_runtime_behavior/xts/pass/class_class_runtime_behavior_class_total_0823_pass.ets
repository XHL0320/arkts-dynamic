/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0823
 * Related Spec: constructor 中初始化字段后实例可读取
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

export function testClassCLASS_TOTAL_0823(): void {
  class RuntimeCase {
    public value: number = 11
  }
  let obj: RuntimeCase = new RuntimeCase()
  assertTrue(obj instanceof RuntimeCase, "instanceof should identify class instance")
  assertEqualNumber(obj.value, 11, "runtime instance field should be available")
}

testClassCLASS_TOTAL_0823();
