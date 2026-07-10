/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: polymorphic this boundary.
 * Boundary reason: polymorphic this in inheritance chain needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class PolyBase {
  value: number = 10
  // If polymorphic this is supported:
  // fluent(): this { return this }
  fluent(): PolyBase { return this }
}

class PolyDerived extends PolyBase {
  extra: number = 20
}

function main(): void {
  let d: PolyDerived = new PolyDerived()
  let result: PolyBase = d.fluent()
  assertTrue(result.value === 10, 'polymorphic this returns instance')
}

main()
