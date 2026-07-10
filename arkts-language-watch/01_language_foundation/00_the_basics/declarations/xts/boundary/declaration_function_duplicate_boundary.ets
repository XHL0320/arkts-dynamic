/*
 * Declaration Stage 1
 * Boundary / pending confirmation.
 * Test point: duplicate function declaration in the same scope.
 * Reason: ECMAScript allows function redeclaration in many cases, but dynamic ArkTS support must be confirmed.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function value(): number {
  return 1
}

function value(): number {
  return 2
}

function main(): void {
  assertTrue(value() === 2, 'duplicate function declaration boundary expects later declaration')
}

main()
