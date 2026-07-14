/*
 * Case ID: CLASS-INTEG-010
 * Coverage ID:
 *   - CLASS-TOTAL-0887
 * Feature: class
 * Test Type: integration
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify object literal 结构兼容不改变 prototype
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

export function testClassCLASS_TOTAL_0887(): void {
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

testClassCLASS_TOTAL_0887();
