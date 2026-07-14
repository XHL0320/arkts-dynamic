/*
 * Case ID: CLASS-PASS-355
 * Coverage ID:
 *   - CLASS-TOTAL-1010
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify factory method 返回 interface 类型并返回 class instance
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
