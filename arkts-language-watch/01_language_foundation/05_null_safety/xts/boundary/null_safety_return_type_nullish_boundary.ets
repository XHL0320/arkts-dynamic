/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: return type with nullish union.
 * Boundary reason: dynamic ArkTS strict null return type checking needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function find(id: number): string | null {
  if (id === 1) { return "one" }
  if (id === 2) { return "two" }
  return null
}

function main(): void {
  assertTrue(find(1) === "one", 'returns value for id 1')
  assertTrue(find(2) === "two", 'returns value for id 2')
  assertTrue(find(99) === null, 'returns null for unknown id')
}

main()
