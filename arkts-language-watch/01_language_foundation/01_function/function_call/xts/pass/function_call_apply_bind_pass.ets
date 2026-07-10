/*
 * Function Stage 1
 * Test point: apply and bind call semantics.
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
  assertNumberEqual(add.apply(null, [1, 2]), 3, 'apply should pass argument list')
  let addOne = add.bind(null, 1)
  assertNumberEqual(addOne(4), 5, 'bind should fix leading argument')
}

main()
