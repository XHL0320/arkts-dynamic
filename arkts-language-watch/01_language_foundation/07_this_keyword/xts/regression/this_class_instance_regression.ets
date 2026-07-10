/*
 * This Keyword Stage 1
 * Regression test.
 * Test point: class instance this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class RegressionClass {
  count: number = 0
  increment(): RegressionClass { this.count++; return this }
  decrement(): RegressionClass { this.count--; return this }
  getCount(): number { return this.count }
}

function main(): void {
  let c: RegressionClass = new RegressionClass()
  c.increment().increment().increment().decrement()
  assertTrue(c.getCount() === 2, 'regression: chained method this')
  assertTrue(c.count === 2, 'regression: field access via this')
}

main()
