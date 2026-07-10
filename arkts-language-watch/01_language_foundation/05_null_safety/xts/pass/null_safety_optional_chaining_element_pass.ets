/*
 * Null Safety Stage 1
 * Test point: optional chaining element access.
 * Expected: arr?.[index] returns element if arr is not null, undefined if null.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let arr: number[] | null = [10, 20, 30]
  assertTrue(arr?.[0] === 10, 'optional chaining element access on non-null')
  assertTrue(arr?.[2] === 30, 'optional chaining element access index 2')

  let nullArr: number[] | null = null
  assertTrue(nullArr?.[0] === undefined, 'optional chaining element access on null returns undefined')
}

main()
