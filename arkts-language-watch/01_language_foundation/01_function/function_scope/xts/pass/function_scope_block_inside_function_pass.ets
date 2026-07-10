/*
 * Function Stage 2
 * Coverage: block scope inside a function.
 * Expected: block-scoped binding can be used inside the block and outer binding remains stable.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function blockScope(): string {
  let value: string = 'outer'
  let seen: string = ''
  {
    let value: string = 'block'
    seen = value
  }
  return seen + ':' + value
}

function main(): void {
  assertStringEqual(blockScope(), 'block:outer', 'block binding should not replace function binding')
}

main()
