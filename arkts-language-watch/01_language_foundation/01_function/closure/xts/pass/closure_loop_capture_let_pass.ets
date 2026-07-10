/*
 * Function Stage 2
 * Coverage: closure captures loop let binding.
 * Expected: each closure observes the per-iteration let binding.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function makeReaders(): Array<() => number> {
  let readers: Array<() => number> = []
  for (let i: number = 0; i < 3; i++) {
    readers.push(function(): number {
      return i
    })
  }
  return readers
}

function main(): void {
  let readers: Array<() => number> = makeReaders()
  assertNumberEqual(readers[0](), 0, 'first let loop closure')
  assertNumberEqual(readers[1](), 1, 'second let loop closure')
  assertNumberEqual(readers[2](), 2, 'third let loop closure')
}

main()
