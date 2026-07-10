/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: super keyword in class context.
 * Boundary reason: dynamic ArkTS super keyword and class inheritance support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Base {
  greet(): string { return "hello from Base" }
}

class Derived extends Base {
  greet(): string { return super.greet() + " and Derived" }
}

function main(): void {
  let d: Derived = new Derived()
  let result: string = d.greet()
  assertTrue(result === "hello from Base and Derived", 'super keyword in class context')
}

main()
