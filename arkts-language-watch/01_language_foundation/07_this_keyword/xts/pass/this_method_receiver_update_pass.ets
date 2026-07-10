/*
 * This Keyword Stage 1
 * Test point: method receiver this can update object state.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let counter = {
  count: 0,
  increment(): void { this.count++ },
  getCount(): number { return this.count }
}

function main(): void {
  counter.increment()
  counter.increment()
  counter.increment()
  assertTrue(counter.getCount() === 3, 'method this updates state')
}

main()
