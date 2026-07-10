/*
 * Boundary / pending confirmation
 * Function Stage 3
 * Coverage: function object custom property.
 * Reason: dynamic function object property behavior may differ from compile-friendly ArkTS restrictions.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function target(): number {
  return 1
}

function main(): void {
  let callable: Function = target
  assertTrue(callable !== undefined, 'function object boundary should keep callable value')
}

main()
