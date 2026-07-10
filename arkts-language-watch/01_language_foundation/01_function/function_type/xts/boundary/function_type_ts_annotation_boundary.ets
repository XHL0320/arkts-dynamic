/*
 * Boundary / pending confirmation
 * Function Stage 3
 * Coverage: TypeScript-style function type annotation compatibility.
 * Reason: dynamic ArkTS syntax support should be confirmed without treating this as static type-system coverage.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let fn: (value: number) => number = function(value: number): number {
    return value + 1
  }
  assertNumberEqual(fn(1), 2, 'function type annotation boundary smoke')
}

main()
