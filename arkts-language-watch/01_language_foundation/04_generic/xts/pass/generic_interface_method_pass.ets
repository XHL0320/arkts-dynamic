/*
 * Generic Stage 1
 * Test point: generic interface with method signature.
 * Expected: generic interface method uses type parameter.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Transformer<T, R> {
  transform(input: T): R
}

class StringLength implements Transformer<string, number> {
  transform(input: string): number { return input.length }
}

function main(): void {
  let t: Transformer<string, number> = new StringLength()
  assertTrue(t.transform("hello") === 5, 'generic interface method transform')
}

main()
