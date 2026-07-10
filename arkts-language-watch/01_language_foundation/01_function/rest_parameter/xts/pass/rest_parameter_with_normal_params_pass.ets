/*
 * Function Stage 1
 * Test point: rest parameter with normal parameters.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function sum(first: number, ...rest: number[]): number {
  let result: number = first
  for (let i: number = 0; i < rest.length; i++) {
    result += rest[i]
  }
  return result
}

function main(): void {
  assertNumberEqual(sum(1, 2, 3), 6, 'normal and rest parameters should combine')
}

main()
