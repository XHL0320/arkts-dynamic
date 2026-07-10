/*
 * Function Stage 2
 * Coverage: closure lifetime regression.
 * Expected: captured environment survives after the creator function returns.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createAppender(prefix: string): (value: string) => string {
  let suffix: string = '-done'
  return function(value: string): string {
    return prefix + value + suffix
  }
}

function main(): void {
  let append: (value: string) => string = createAppender('start-')
  assertStringEqual(append('work'), 'start-work-done', 'closure environment should survive outer return')
}

main()
