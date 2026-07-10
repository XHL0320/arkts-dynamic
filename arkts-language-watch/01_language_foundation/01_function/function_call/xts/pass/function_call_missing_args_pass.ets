/*
 * Function Stage 1
 * Test point: missing arguments become undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function missing(a: number, b?: number): boolean {
  return b === undefined
}

function main(): void {
  assertTrue(missing(1), 'missing argument should be undefined')
}

main()
