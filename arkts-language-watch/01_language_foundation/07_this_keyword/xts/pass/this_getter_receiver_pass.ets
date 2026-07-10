/*
 * This Keyword Stage 1
 * Test point: getter receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class GetterTest {
  _value: number = 42
  get value(): number { return this._value }
}

function main(): void {
  let obj: GetterTest = new GetterTest()
  assertTrue(obj.value === 42, 'getter this is receiver')
}

main()
