/*
 * This Keyword Stage 1
 * Test point: object literal method this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let literal = {
  name: "test",
  getName(): string { return this.name }
}

function main(): void {
  assertTrue(literal.getName() === "test", 'object literal method this')
}

main()
