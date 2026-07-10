/*
 * Boundary / pending confirmation
 * Function Stage 3
 * Coverage: overload signature with optional parameter.
 * Reason: optional parameter interaction with TS-style overload syntax is compatibility-only.
 */
function joinText(value: string): string
function joinText(value: string, suffix?: string): string
function joinText(value: string, suffix?: string): string {
  if (suffix === undefined) {
    return value
  }
  return value + suffix
}

function main(): void {
  joinText('a')
  joinText('a', 'b')
}

main()
