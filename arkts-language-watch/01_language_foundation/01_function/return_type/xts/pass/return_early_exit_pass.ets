/*
 * Function Stage 1
 * Test point: return exits function early.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(): number {
  let result: number = 1
  return result
  result = 2
}

function main(): void {
  assertNumberEqual(value(), 1, 'return should stop later statements')
}

main()
