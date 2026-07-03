/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-1010
 * Related Spec: factory method 返回 interface 类型并返回 class instance
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

export function testClassCLASS_TOTAL_1010(): void {
  interface NamedCase {
    name: string
    getName(): string
  }
  class InterfaceCase implements NamedCase {
    public name: string = "arkts"
    public getName(): string {
      return this.name
    }
  }
  let obj: NamedCase = new InterfaceCase()
  assertEqualString(obj.getName(), "arkts", "class should implement interface")
}

testClassCLASS_TOTAL_1010();
