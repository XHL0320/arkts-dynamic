/*
 * Keyword Stage 1
 * Test point: class keyword as declaration keyword.
 * Expected: class keyword can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class MyClass {
  value: number
  constructor(v: number) { this.value = v }
}

function main(): void {
  let obj: MyClass = new MyClass(99)
  assertTrue(obj.value === 99, 'class declaration keyword works')
}

main()
