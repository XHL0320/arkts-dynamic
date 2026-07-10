/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic method in object literal.
 * Boundary reason: dynamic ArkTS object method generic support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let obj = {
  identity<T>(value: T): T { return value }
}

function main(): void {
  let result: number = obj.identity(42)
  assertTrue(result === 42, 'object method generic works')
}

main()
