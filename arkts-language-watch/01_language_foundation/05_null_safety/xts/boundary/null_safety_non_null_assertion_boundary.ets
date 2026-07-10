/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: non-null assertion operator !.
 * Boundary reason: dynamic ArkTS non-null assertion support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let val: number | null = 42
  let nonNull: number = val!
  assertTrue(nonNull === 42, 'non-null assertion on non-null value')

  // If val were actually null, the ! assertion would not prevent runtime error.
  // The assertion is a compile-time hint, erased at runtime.
}

main()
