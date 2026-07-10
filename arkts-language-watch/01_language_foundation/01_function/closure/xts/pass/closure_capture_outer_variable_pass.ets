/*
 * Function Stage 2
 * Coverage: closure captures outer variable.
 * Expected: returned inner function reads the captured binding.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createReader(): () => number {
  let value: number = 11
  return function(): number {
    return value
  }
}

function main(): void {
  let read: () => number = createReader()
  assertNumberEqual(read(), 11, 'closure should capture outer variable')
}

main()
