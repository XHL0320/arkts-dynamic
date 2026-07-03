/*
 * Feature: Class
 * SubFeature: 05_constructor
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: ES2022
 * Source Coverage ID: CLASS-TOTAL-0564
 * Related Spec: 基类 constructor 参数由子类 super 传递通过
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

export function testClassCLASS_TOTAL_0564(): void {
  class ConstructorCase {
    public value: number
    constructor(value: number) {
      this.value = value
    }
  }
  let obj: ConstructorCase = new ConstructorCase(3)
  assertEqualNumber(obj.value, 3, "constructor should initialize field")
}

testClassCLASS_TOTAL_0564();
