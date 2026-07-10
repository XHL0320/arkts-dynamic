/*
 * Function Stage 2
 * Coverage: inner binding shadows outer binding.
 * Expected: shadowing is local and does not mutate the outer binding.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function checkShadow(): string {
  let value: string = 'outer'
  function inner(): string {
    let value: string = 'inner'
    return value
  }
  return inner() + ':' + value
}

function main(): void {
  assertStringEqual(checkShadow(), 'inner:outer', 'inner binding should shadow only locally')
}

main()
