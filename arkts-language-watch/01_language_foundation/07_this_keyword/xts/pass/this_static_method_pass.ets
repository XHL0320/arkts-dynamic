/*
 * This Keyword Stage 1
 * Test point: static method this is class constructor.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class StaticTest {
  static defaultValue: number = 42
  static getDefaultValue(): number { return this.defaultValue }
}

function main(): void {
  assertTrue(StaticTest.getDefaultValue() === 42, 'static method this is class')
}

main()
