/*
 * This Keyword Stage 1
 * Test point: class constructor this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ConstructorTest {
  value: number
  constructor(v: number) {
    this.value = v
  }
}

function main(): void {
  let obj: ConstructorTest = new ConstructorTest(42)
  assertTrue(obj.value === 42, 'constructor this is new instance')
}

main()
