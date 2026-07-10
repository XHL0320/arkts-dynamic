/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: nullish assignment ??= operator.
 * Boundary reason: dynamic ArkTS ??= support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let x: number | null = null
  x ??= 42
  assertTrue(x === 42, 'nullish assignment when null')

  let y: number | null = 10
  y ??= 42
  assertTrue(y === 10, 'nullish assignment when has value does not change')
}

main()
