/*
 * Case ID: GEN-BOUND-014
 * Coverage ID:
 *   - GEN-UNION-001
 *   - GEN-UNION-004
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types, null_safety
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic union type and optional property boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function process<T>(value: T | null): T | undefined {
  if (value === null) {
    return undefined
  }
  return value
}

function main(): void {
  let result: number | undefined = process<number>(42)
  assertTrue(result === 42, 'generic with union type returns value')
  let empty: number | undefined = process<number>(null)
  assertTrue(empty === undefined, 'generic with union type returns undefined for null')
}

main()
