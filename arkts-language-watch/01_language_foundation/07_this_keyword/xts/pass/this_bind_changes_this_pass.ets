/*
 * This Keyword Stage 1
 * Test point: bind changes this permanently.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 88 }
  let bound: () => number = getValue.bind(obj)
  assertTrue(bound() === 88, 'bind changes this to obj')
}

main()
