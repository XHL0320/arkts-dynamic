/*
 * Function Stage 2
 * Coverage: parameter value and local block shadowing.
 * Expected: block shadowing does not change the parameter binding.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function parameterShadow(value: string): string {
  let innerValue: string = ''
  {
    let value: string = 'block'
    innerValue = value
  }
  return innerValue + ':' + value
}

function main(): void {
  assertStringEqual(parameterShadow('param'), 'block:param', 'block binding should shadow parameter locally')
}

main()
