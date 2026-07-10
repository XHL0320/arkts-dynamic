/*
 * Interface Stage 1
 * Test point: interface with method signature.
 * Expected: interface method signature compiles and class can implement it.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Greeter {
  greet(): string
  getName(): string
}

class EnglishGreeter implements Greeter {
  greet(): string { return "Hello" }
  getName(): string { return "English" }
}

function main(): void {
  let g: Greeter = new EnglishGreeter()
  assertTrue(g.greet() === "Hello", 'method signature greet')
  assertTrue(g.getName() === "English", 'method signature getName')
}

main()
