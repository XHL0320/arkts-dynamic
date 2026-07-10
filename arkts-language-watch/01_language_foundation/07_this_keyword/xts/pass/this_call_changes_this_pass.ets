/*
 * This Keyword Stage 1
 * Test point: call changes this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 42 }
  let result: number = getValue.call(obj)
  assertTrue(result === 42, 'call changes this to obj')
}

main()
