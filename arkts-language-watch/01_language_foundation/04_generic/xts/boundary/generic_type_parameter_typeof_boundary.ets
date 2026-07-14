/*
 * Case ID: GEN-BOUND-013
 * Coverage ID:
 *   - GEN-RT-002
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types, operators
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify typeof with generic type parameter boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function checkType<T>(value: T): string {
  // typeof T would be a compile error (T has no runtime value).
  // typeof value works because value is a real value.
  return typeof value
}

function main(): void {
  let t: string = checkType(42)
  assertTrue(t === "number", 'typeof value inside generic function works')
  let s: string = checkType("hello")
  assertTrue(s === "string", 'typeof string value inside generic function')
}

main()
