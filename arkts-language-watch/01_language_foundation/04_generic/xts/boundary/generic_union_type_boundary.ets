/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic with union type.
 * Boundary reason: dynamic ArkTS generic + union type support needs confirmation.
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
