/*
 * Case ID: GEN-BOUND-012
 * Coverage ID:
 *   - GEN-RT-003
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types, operators
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify instanceof with generic type parameter boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class GenericList<T> {
  items: T[] = []
  add(item: T): void { this.items.push(item) }
}

function main(): void {
  let list: GenericList<number> = new GenericList()
  list.add(1)
  list.add(2)
  // list instanceof GenericList works (class has runtime presence).
  // list instanceof T would be a compile error (T has no runtime presence).
  assertTrue(list instanceof GenericList, 'instanceof class (not type param) works')
  assertTrue(list.items.length === 2, 'list has 2 items')
}

main()
