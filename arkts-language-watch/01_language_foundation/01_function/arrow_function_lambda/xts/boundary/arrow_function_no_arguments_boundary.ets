/*
 * Boundary / pending confirmation
 * Function Stage 2
 * Coverage: arrow function has no own arguments object.
 * Reason: arguments behavior should be verified against dynamic ArkTS implementation.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function outer(a: number): boolean {
  let arrow: () => boolean = (): boolean => {
    return arguments[0] === a
  }
  return arrow()
}

function main(): void {
  assertTrue(outer(6), 'arrow arguments boundary should use surrounding arguments if supported')
}

main()
