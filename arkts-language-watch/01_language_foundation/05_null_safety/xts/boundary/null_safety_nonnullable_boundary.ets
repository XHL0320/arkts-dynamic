/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: NonNullable<T> utility type.
 * Boundary reason: dynamic ArkTS NonNullable support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function process<T>(value: NonNullable<T>): T {
  return value
}

function main(): void {
  let result: number = process<number>(42)
  assertTrue(result === 42, 'NonNullable accepts non-null value')
}

main()
