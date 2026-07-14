/*
 * Case ID: GEN-BOUND-003
 * Coverage ID:
 *   - GEN-CONST-004
 *   - GEN-CONST-005
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types, interface
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic constraint with interface structure and runtime check boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface HasId {
  id: number
}

function getId<T extends HasId>(item: T): number {
  return item.id
}

class Item implements HasId {
  id: number
  constructor(id: number) { this.id = id }
}

function main(): void {
  let item: Item = new Item(99)
  let id: number = getId(item)
  assertTrue(id === 99, 'constraint satisfied returns id')
  // Passing a type that doesn't extend HasId would be a compile error in TS.
  // Dynamic ArkTS enforcement needs confirmation.
}

main()
