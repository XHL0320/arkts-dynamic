/*
 * This Keyword Stage 1
 * Test point: apply changes this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 55 }
  let result: number = getValue.apply(obj)
  assertTrue(result === 55, 'apply changes this to obj')
}

main()
