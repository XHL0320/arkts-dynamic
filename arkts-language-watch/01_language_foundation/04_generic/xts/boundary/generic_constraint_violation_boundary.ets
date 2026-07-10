/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic constraint violation.
 * Boundary reason: dynamic ArkTS constraint violation compile error needs confirmation.
 * In TypeScript, passing a type that doesn't satisfy constraint is a compile error.
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
