/*
 * Case ID: GEN-PASS-011
 * Coverage ID:
 *   - GEN-METHOD-001
 *   - GEN-METHOD-002
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function, class
 * Spec Source: pending
 * Description: Verify generic method in class with explicit type argument.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Utils {
  identity<T>(value: T): T { return value }
  toArray<T>(value: T): T[] { return [value] }
}

function main(): void {
  let u: Utils = new Utils()
  assertTrue(u.identity<number>(42) === 42, 'generic method identity')
  let arr: number[] = u.toArray<number>(99)
  assertTrue(arr[0] === 99, 'generic method toArray')
}

main()
