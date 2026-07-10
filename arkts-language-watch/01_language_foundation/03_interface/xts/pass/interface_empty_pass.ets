/*
 * Interface Stage 1
 * Test point: empty interface declaration.
 * Expected: empty interface compiles and can be used as a type.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface EmptyInterface {}

function main(): void {
  let obj: EmptyInterface = {}
  assertTrue(obj !== null, 'empty interface can be used as type')
}

main()
