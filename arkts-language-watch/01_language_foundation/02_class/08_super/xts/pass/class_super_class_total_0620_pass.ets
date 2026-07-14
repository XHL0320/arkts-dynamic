/*
 * Case ID: CLASS-PASS-162
 * Coverage ID:
 *   - CLASS-TOTAL-0620
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Description: Verify super() 参数类型与基类 constructor 完全匹配
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

export function testClassCLASS_TOTAL_0620(): void {
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

testClassCLASS_TOTAL_0620();
