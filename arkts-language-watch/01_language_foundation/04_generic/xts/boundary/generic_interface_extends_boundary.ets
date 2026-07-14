/*
 * Case ID: GEN-BOUND-007
 * Coverage ID:
 *   - GEN-IF-005
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: interface, types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic interface runtime erasure boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Base<T> {
  data: T
}

interface Extended<T> extends Base<T> {
  extra: number
}

function main(): void {
  let obj: Extended<string> = { data: "hello", extra: 42 }
  assertTrue(obj.data === "hello", 'generic interface extends data')
  assertTrue(obj.extra === 42, 'generic interface extends extra')
}

main()
