/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: bind ignores later call this.
 * Boundary reason: bind permanently fixes this; call cannot override.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj1 = { value: 42 }
  let obj2 = { value: 99 }
  let bound: () => number = getValue.bind(obj1)
  let result: number = bound.call(obj2)
  // bind should win over call — result should be 42, not 99
  assertTrue(result === 42, 'bind ignores later call this')
}

main()
