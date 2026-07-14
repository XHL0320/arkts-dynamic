/*
 * Case ID: INTF-BOUND-009
 * Coverage ID:
 *   - IF-IDX-001
 *   - IF-IDX-003
 * Feature: interface
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 03_interface
 * Related Chapters: typescript
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic interface behavior has not been verified.
 * Description: Verify string index signature and index-property mix boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface StringIndex {
  [key: string]: number
}

function main(): void {
  let obj: StringIndex = { "a": 1, "b": 2 }
  assertTrue(obj["a"] === 1, 'string index signature access a')
  assertTrue(obj["b"] === 2, 'string index signature access b')
  obj["c"] = 3
  assertTrue(obj["c"] === 3, 'string index signature assignment')
}

main()
