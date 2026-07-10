/*
 * Function Stage 1
 * Test point: extra arguments are accepted by runtime call semantics.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function first(a: number): number {
  return a
}

function main(): void {
  assertNumberEqual(first(1, 2, 3), 1, 'extra arguments should not change first parameter')
}

main()
