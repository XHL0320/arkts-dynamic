/*
 * This Keyword Stage 1
 * Test point: derived class this after super().
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Base {
  baseValue: number
  constructor(v: number) { this.baseValue = v }
}

class Derived extends Base {
  derivedValue: number
  constructor(base: number, derived: number) {
    super(base)
    this.derivedValue = derived
  }
  getTotal(): number { return this.baseValue + this.derivedValue }
}

function main(): void {
  let d: Derived = new Derived(10, 20)
  assertTrue(d.getTotal() === 30, 'derived this after super works')
}

main()
