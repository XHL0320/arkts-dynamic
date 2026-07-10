/*
 * Null Safety Stage 1
 * Test point: default parameter with null does NOT trigger default.
 * Expected: passing null does not trigger default (only undefined does).
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function concat(a: string, b: string = "default"): string {
  return a + b
}

function main(): void {
  assertTrue(concat("hello") === "hellodefault", 'omitted triggers default')
  assertTrue(concat("hello", undefined) === "hellodefault", 'undefined triggers default')
  // null is not undefined — it does not trigger default in standard JS/TS
  // But ArkTS may handle this differently
  let result: string = concat("hello", null as string)
  assertTrue(result === "hellonull", 'null does not trigger default, becomes "null"')
}

main()
