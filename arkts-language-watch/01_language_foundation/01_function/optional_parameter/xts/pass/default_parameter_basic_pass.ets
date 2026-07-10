/*
 * Function Stage 1
 * Test point: default parameter basic behavior.
 * Expected: default parameter is used when an argument is omitted.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(v: number = 10): number {
  return v
}

function main(): void {
  assertNumberEqual(value(), 10, 'default parameter should be used')
  assertNumberEqual(value(5), 5, 'explicit argument should be used')
}

main()
