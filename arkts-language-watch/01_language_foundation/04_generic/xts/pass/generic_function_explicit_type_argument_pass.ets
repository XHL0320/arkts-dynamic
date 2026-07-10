/*
 * Generic Stage 1
 * Test point: generic function with explicit type argument.
 * Expected: identity<number>(42) compiles with explicit type.
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
  let result: number = identity<number>(42)
  assertTrue(result === 42, 'explicit type argument works')
  let str: string = identity<string>("world")
  assertTrue(str === "world", 'explicit string type argument')
}

main()
