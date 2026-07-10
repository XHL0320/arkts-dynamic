/*
 * Keyword Stage 1
 * Test point: true/false/null literal keywords.
 * Expected: true/false/null keywords work as literal values.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let t: boolean = true
  let f: boolean = false
  let n: null = null
  assertTrue(t === true, 'true literal keyword works')
  assertTrue(f === false, 'false literal keyword works')
  assertTrue(n === null, 'null literal keyword works')
}

main()
