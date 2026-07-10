/*
 * This Keyword Stage 1
 * Test point: class instance method this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class InstanceMethod {
  value: number = 10
  getValue(): number { return this.value }
  setValue(v: number): void { this.value = v }
}

function main(): void {
  let obj: InstanceMethod = new InstanceMethod()
  assertTrue(obj.getValue() === 10, 'instance method this is receiver')
  obj.setValue(99)
  assertTrue(obj.getValue() === 99, 'instance method updates field via this')
}

main()
