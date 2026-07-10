/*
 * This Keyword Stage 1
 * Test point: setter receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class SetterTest {
  _value: number = 0
  get value(): number { return this._value }
  set value(v: number) { this._value = v }
}

function main(): void {
  let obj: SetterTest = new SetterTest()
  obj.value = 99
  assertTrue(obj.value === 99, 'setter this is receiver')
}

main()
