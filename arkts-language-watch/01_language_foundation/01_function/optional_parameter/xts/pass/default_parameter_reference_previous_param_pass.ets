/*
 * Function Stage 1
 * Test point: default parameter can reference a previous parameter.
 * Expected: later default initializer sees the previous parameter binding.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function add(a: number, b: number = a + 1): number {
  return a + b
}

function main(): void {
  assertNumberEqual(add(2), 5, 'default parameter should read previous parameter')
}

main()
