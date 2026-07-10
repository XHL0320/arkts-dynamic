/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic function with constraint T extends U.
 * Boundary reason: dynamic ArkTS generic constraint support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface HasLength {
  length: number
}

function getLength<T extends HasLength>(item: T): number {
  return item.length
}

function main(): void {
  let len: number = getLength("hello")
  assertTrue(len === 5, 'constraint allows string (has length)')
  let arrLen: number = getLength([1, 2, 3])
  assertTrue(arrLen === 3, 'constraint allows array (has length)')
}

main()
