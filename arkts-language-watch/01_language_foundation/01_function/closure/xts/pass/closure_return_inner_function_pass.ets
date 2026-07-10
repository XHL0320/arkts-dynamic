/*
 * Function Stage 2
 * Coverage: outer function returns inner function.
 * Expected: returned function remains callable after outer returns.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function makeGreeter(name: string): () => string {
  return function(): string {
    return 'hello ' + name
  }
}

function main(): void {
  let greet: () => string = makeGreeter('arkts')
  assertStringEqual(greet(), 'hello arkts', 'returned inner function should preserve captured parameter')
}

main()
