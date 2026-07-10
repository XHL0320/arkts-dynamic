/*
 * Boundary / pending confirmation
 * Function Stage 3
 * Coverage: multiple overload signatures and one implementation.
 * Reason: dynamic ArkTS compatibility with TS-style signatures is pending confirmation.
 */
function format(value: number): string
function format(value: boolean): string
function format(value: string): string
function format(value: number | boolean | string): string {
  return '' + value
}

function main(): void {
  format(1)
  format(true)
  format('ok')
}

main()
