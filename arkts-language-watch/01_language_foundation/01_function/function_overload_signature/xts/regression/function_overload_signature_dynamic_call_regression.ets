/*
 * Function Stage 3
 * Coverage: dynamic call to overload implementation.
 * Expected: if overload syntax is accepted, runtime behavior comes from the implementation function.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function convert(value: number): string
function convert(value: string): string
function convert(value: number | string): string {
  return '' + value
}

function main(): void {
  assertStringEqual(convert(3), '3', 'number overload call should use implementation')
  assertStringEqual(convert('x'), 'x', 'string overload call should use implementation')
}

main()
