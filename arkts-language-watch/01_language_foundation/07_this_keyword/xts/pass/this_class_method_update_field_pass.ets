/*
 * This Keyword Stage 1
 * Test point: class method updates field via this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Counter {
  count: number = 0
  increment(): void { this.count++ }
  decrement(): void { this.count-- }
  getCount(): number { return this.count }
}

function main(): void {
  let c: Counter = new Counter()
  c.increment()
  c.increment()
  c.increment()
  c.decrement()
  assertTrue(c.getCount() === 2, 'class method updates field via this')
}

main()
