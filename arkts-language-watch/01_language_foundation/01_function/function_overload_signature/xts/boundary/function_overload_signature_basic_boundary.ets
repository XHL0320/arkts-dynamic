/*
 * Boundary / pending confirmation
 * Function Stage 3
 * Coverage: TypeScript-style overload signature syntax.
 * Reason: this checks syntax compatibility only, not static overload resolution.
 */
function pick(value: number): number
function pick(value: string): string
function pick(value: number | string): number | string {
  return value
}

function main(): void {
  pick(1)
  pick('x')
}

main()
