/*
 * Generic Stage 1
 * Test point: Array<T> generic type usage.
 * Expected: Array<T> works as a generic type.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let arr: Array<number> = [1, 2, 3]
  assertTrue(arr.length === 3, 'Array<number> length')
  assertTrue(arr[0] === 1, 'Array<number> first element')
  let strs: Array<string> = ["a", "b"]
  assertTrue(strs.length === 2, 'Array<string> length')
}

main()
