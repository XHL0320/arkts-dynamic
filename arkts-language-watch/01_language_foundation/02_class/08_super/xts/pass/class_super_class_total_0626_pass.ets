/*
 * Case ID: CLASS-PASS-168
 * Coverage ID:
 *   - CLASS-TOTAL-0626
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify super.method() 参数类型正确时调用通过
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

export function testClassCLASS_TOTAL_0626(): void {
  class SuperBase {
    public value: number
    constructor(value: number) {
      this.value = value
    }
    public getValue(): number {
      return this.value
    }
  }
  class SuperDerived extends SuperBase {
    constructor() {
      super(4)
    }
    public readBase(): number {
      return super.getValue()
    }
  }
  let obj: SuperDerived = new SuperDerived()
  assertEqualNumber(obj.readBase(), 4, "super.method should call base method")
}

testClassCLASS_TOTAL_0626();
