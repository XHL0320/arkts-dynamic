/*
 * This Keyword Stage 1
 * Test point: method call receiver this.
 * Expected: obj.method() has this === obj.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let obj = {
  value: 42,
  getValue(): number { return this.value }
}

function main(): void {
  assertTrue(obj.getValue() === 42, 'method call this is receiver')
}

main()
