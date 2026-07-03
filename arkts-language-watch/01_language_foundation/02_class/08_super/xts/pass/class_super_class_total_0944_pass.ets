/*
 * Feature: Class
 * SubFeature: 08_super
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0944
 * Related Spec: generic base constructor 参数通过 super(value) 传递
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

export function testClassCLASS_TOTAL_0944(): void {
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

testClassCLASS_TOTAL_0944();
