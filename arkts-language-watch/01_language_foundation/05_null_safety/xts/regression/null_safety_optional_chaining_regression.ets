/*
 * Case ID: NULL-REGR-002
 * Coverage ID:
 *   - NS-OC-PROP-001
 *   - NS-OC-PROP-002
 *   - NS-OC-PROP-004
 * Feature: null_safety
 * Test Type: regression
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators
 * Spec Source: pending
 * Regression Issue: pending
 * Description: Verify optional chaining comprehensive regression.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Node {
  value: number
  next: Node | null
  constructor(v: number, n: Node | null = null) { this.value = v; this.next = n }
}

function main(): void {
  let list: Node | null = new Node(1, new Node(2, new Node(3)))
  assertTrue(list?.value === 1, 'regression: first node value')
  assertTrue(list?.next?.value === 2, 'regression: second node value')
  assertTrue(list?.next?.next?.value === 3, 'regression: third node value')
  assertTrue(list?.next?.next?.next?.value === undefined, 'regression: null tail short-circuits')

  let empty: Node | null = null
  assertTrue(empty?.value === undefined, 'regression: null list short-circuits')
  assertTrue(empty?.next?.value === undefined, 'regression: null list chain short-circuits')
}

main()