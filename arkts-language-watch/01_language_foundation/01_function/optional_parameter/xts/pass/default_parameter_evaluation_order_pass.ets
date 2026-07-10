/*
 * Function Stage 1
 * Test point: default parameter evaluation order.
 * Expected: default initializers are evaluated left to right only when needed.
 */

function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

let order: string = ''

function next(label: string): number {
  order += label
  return 1
}

function value(a: number = next('a'), b: number = next('b')): number {
  return a + b
}

function main(): void {
  value()
  assertStringEqual(order, 'ab', 'default parameters should evaluate left to right')
}

main()
