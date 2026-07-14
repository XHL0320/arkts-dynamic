/*
 * Case ID: OPER-PASS-020
 * Coverage ID:
 *   - OP-OPTIONAL-CHAINING-001
 *   - OP-OPTIONAL-CHAINING-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify optional chaining property access.. null?.x === undefined, {x:1}?.x === 1.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = { x: 1, y: 2 }
  assertTrue(obj?.x === 1, 'optional access on non-null returns value')
  let empty: Record<string, number> | null = null
  assertTrue(empty?.x === undefined, 'optional access on null returns undefined')
  let nested: Record<string, Record<string, number>> | null = { inner: { value: 42 } }
  assertTrue(nested?.inner?.value === 42, 'nested optional access')
  let emptyNested: Record<string, Record<string, number>> | null = null
  assertTrue(emptyNested?.inner?.value === undefined, 'nested optional access on null short-circuits')
}

main()
