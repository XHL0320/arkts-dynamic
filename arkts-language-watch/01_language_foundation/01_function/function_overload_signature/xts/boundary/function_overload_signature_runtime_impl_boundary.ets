/*
 * Boundary / pending confirmation
 * Function Stage 3
 * Coverage: overload signatures with one implementation.
 * Reason: runtime should call the implementation if TS-style overload syntax is accepted.
 */
function choose(value: number): number
function choose(value: string): string
function choose(value: number | string): number | string {
  return value
}

function main(): void {
  choose(2)
  choose('two')
}

main()
