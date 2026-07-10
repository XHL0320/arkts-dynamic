/*
 * Generic Stage 1
 * Test point: generic function basic declaration and usage.
 * Expected: identity<T>(value: T): T compiles and returns the same value.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function identity<T>(value: T): T {
  return value
}

function main(): void {
  let result: number = identity(42)
  assertTrue(result === 42, 'generic function returns input value')
  let str: string = identity("hello")
  assertTrue(str === "hello", 'generic function works with string')
}

main()
