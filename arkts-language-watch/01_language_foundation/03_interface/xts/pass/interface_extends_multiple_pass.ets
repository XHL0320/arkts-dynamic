/*
 * Interface Stage 1
 * Test point: interface extends multiple interfaces.
 * Expected: sub-interface inherits all parent interface members.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface A {
  a: number
}

interface B {
  b: string
}

interface C extends A, B {
  c: boolean
}

function main(): void {
  let obj: C = { a: 1, b: "hello", c: true }
  assertTrue(obj.a === 1, 'inherited from A')
  assertTrue(obj.b === "hello", 'inherited from B')
  assertTrue(obj.c === true, 'own property c')
}

main()
