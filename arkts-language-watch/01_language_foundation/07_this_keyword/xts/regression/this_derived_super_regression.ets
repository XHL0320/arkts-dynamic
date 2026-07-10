/*
 * This Keyword Stage 1
 * Regression test.
 * Test point: derived super/this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class BaseReg {
  base: number
  constructor(v: number) { this.base = v }
  getBase(): number { return this.base }
}

class DerivedReg extends BaseReg {
  derived: number
  constructor(b: number, d: number) {
    super(b)
    this.derived = d
  }
  getTotal(): number { return this.base + this.derived }
}

function main(): void {
  let d: DerivedReg = new DerivedReg(10, 20)
  assertTrue(d.getBase() === 10, 'regression: derived this base access')
  assertTrue(d.getTotal() === 30, 'regression: derived this total')
  assertTrue(d.base === 10, 'regression: derived this field base')
  assertTrue(d.derived === 20, 'regression: derived this field derived')
}

main()
