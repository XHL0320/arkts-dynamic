/*
 * Function Stage 1
 * Test point: undefined triggers default parameter.
 * Expected: passing undefined uses the default initializer.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(v: number = 20): number {
  return v
}

function main(): void {
  assertNumberEqual(value(undefined), 20, 'undefined should trigger default parameter')
}

main()
