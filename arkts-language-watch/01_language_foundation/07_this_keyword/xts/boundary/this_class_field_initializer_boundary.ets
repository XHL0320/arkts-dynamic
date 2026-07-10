/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: class field initializer this boundary.
 * Boundary reason: field initializer this behavior in dynamic ArkTS needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class FieldTest {
  x: number = 10
  y: number = this.x * 2  // field initializer using this
}

function main(): void {
  let obj: FieldTest = new FieldTest()
  assertTrue(obj.x === 10, 'field x initialized')
  assertTrue(obj.y === 20, 'field y uses this in initializer')
}

main()
