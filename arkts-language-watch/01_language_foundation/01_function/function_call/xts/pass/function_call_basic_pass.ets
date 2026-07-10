/*
 * Function Stage 1
 * Test point: ordinary function call.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function add(a: number, b: number): number {
  return a + b
}

function main(): void {
  assertNumberEqual(add(1, 2), 3, 'ordinary function call should return result')
}

main()
