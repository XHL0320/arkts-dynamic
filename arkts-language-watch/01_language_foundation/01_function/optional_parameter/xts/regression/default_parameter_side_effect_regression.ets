/*
 * Function Stage 1
 * Regression candidate.
 * Test point: default parameter side effect should run once per omitted argument.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

let count: number = 0

function next(): number {
  count++
  return count
}

function value(v: number = next()): number {
  return v
}

function main(): void {
  assertNumberEqual(value(), 1, 'first omitted argument should evaluate default once')
  assertNumberEqual(value(10), 10, 'provided argument should skip default evaluation')
  assertNumberEqual(count, 1, 'default side effect should run only once')
}

main()
