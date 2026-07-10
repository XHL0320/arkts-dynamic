/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: static field initializer this boundary.
 * Boundary reason: static field this is class constructor; behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class StaticField {
  static count: number = 0
  static id: number = ++StaticField.count  // static field using class reference
  static getIdViaThis(): number { return this.id }
}

function main(): void {
  assertTrue(StaticField.id === 1, 'static field initialized')
  assertTrue(StaticField.getIdViaThis() === 1, 'static method this is class')
}

main()
