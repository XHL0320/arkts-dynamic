/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: typeof on generic type parameter.
 * Boundary reason: type parameter T has no runtime value; typeof T is typically a compile error.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function checkType<T>(value: T): string {
  // typeof T would be a compile error (T has no runtime value).
  // typeof value works because value is a real value.
  return typeof value
}

function main(): void {
  let t: string = checkType(42)
  assertTrue(t === "number", 'typeof value inside generic function works')
  let s: string = checkType("hello")
  assertTrue(s === "string", 'typeof string value inside generic function')
}

main()
