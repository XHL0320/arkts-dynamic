/*
 * Null Safety Stage 1
 * Test point: optional chaining method call.
 * Expected: obj?.method() calls method if obj is not null, returns undefined if null.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Greeter {
  greet(): string { return "hello" }
}

function main(): void {
  let g: Greeter | null = new Greeter()
  assertTrue(g?.greet() === "hello", 'optional chaining method call on non-null')

  let nullG: Greeter | null = null
  assertTrue(nullG?.greet() === undefined, 'optional chaining method call on null returns undefined')
}

main()
