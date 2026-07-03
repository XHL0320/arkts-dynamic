/*
 * Feature: Class
 * SubFeature: 19_class_runtime_behavior
 * CaseType: integration
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-1128
 * Related Spec: module export class 与 instanceof 跨模块组合
 * Expected: Integrated class semantics compile and run with focused assertions.
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

export function testClassCLASS_TOTAL_1128(): void {
  class IntegratedBase {
    public value: number
    constructor(value: number) {
      this.value = value
    }
  }
  class IntegratedDerived extends IntegratedBase {
    constructor() {
      super(4)
    }
    public getValue(): number {
      return this.value
    }
  }
  let obj: IntegratedDerived = new IntegratedDerived()
  assertEqualNumber(obj.getValue(), 4, "integrated class semantics should work together")
}

testClassCLASS_TOTAL_1128();
