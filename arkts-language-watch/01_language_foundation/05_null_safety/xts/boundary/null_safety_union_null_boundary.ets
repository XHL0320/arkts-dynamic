/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: T | null union type.
 * Boundary reason: dynamic ArkTS union with null support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function maybeValue(x: boolean): string | null {
  if (x) { return "found" }
  return null
}

function main(): void {
  assertTrue(maybeValue(true) === "found", 'union with null returns value')
  assertTrue(maybeValue(false) === null, 'union with null returns null')
}

main()
