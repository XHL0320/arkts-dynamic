/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0799
 * Related Spec: 基类 constructor 读取基类字段
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

export function testClassCLASS_TOTAL_0799(): void {
  class InitOrderCase {
    public first: number = 1
    public second: number = this.first + 1
    constructor() {
      this.second = this.second + 1
    }
  }
  let obj: InitOrderCase = new InitOrderCase()
  assertEqualNumber(obj.second, 3, "field initializers should run before constructor body")
}

testClassCLASS_TOTAL_0799();
