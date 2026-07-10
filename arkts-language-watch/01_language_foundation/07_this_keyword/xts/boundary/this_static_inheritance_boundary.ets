/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: static this inheritance boundary.
 * Boundary reason: static method this in derived class.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class StaticBase {
  static baseValue: number = 42
  static getBaseValue(): number { return this.baseValue }
}

class StaticDerived extends StaticBase {
  static derivedValue: number = 99
}

function main(): void {
  assertTrue(StaticDerived.getBaseValue() === 42, 'static method inherited, this is StaticDerived class')
}

main()
