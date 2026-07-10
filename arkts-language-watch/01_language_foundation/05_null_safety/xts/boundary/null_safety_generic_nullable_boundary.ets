/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: generic with nullable type parameter.
 * Boundary reason: dynamic ArkTS generic nullable type support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Result<T> {
  value: T | null
  constructor(v: T | null) { this.value = v }
}

function main(): void {
  let r: Result<number> = new Result(42)
  assertTrue(r.value === 42, 'generic nullable holds value')

  let nullResult: Result<string> = new Result(null)
  assertTrue(nullResult.value === null, 'generic nullable holds null')
}

main()
