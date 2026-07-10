/*
 * Function Stage 2
 * Coverage: nested lexical resolution regression.
 * Expected: nearest binding wins, and outer binding remains reachable through another nested function.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function resolveNested(): string {
  let value: string = 'outer'
  function middle(): string {
    let value: string = 'middle'
    function inner(): string {
      return value
    }
    return inner()
  }
  return middle() + ':' + value
}

function main(): void {
  assertStringEqual(resolveNested(), 'middle:outer', 'nested resolution should use nearest lexical binding')
}

main()
