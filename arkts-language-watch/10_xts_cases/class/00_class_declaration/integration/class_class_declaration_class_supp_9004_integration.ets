/*
 * Feature: Class
 * SubFeature: 00_class_declaration
 * CaseType: integration
 * Priority: P2
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-SUPP-9004
 * Related Spec: class declaration integrates with instance field and method
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

export function testClassCLASS_SUPP_9004(): void {
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

testClassCLASS_SUPP_9004();
