/*
 * Case ID: CLASS-PASS-338
 * Coverage ID:
 *   - CLASS-TOTAL-0736
 * Feature: class
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify class implements 单个 interface 并实现 required property 和 method
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

export function testClassCLASS_TOTAL_0736(): void {
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

testClassCLASS_TOTAL_0736();
